package smartshop.controller;

import java.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import smartshop.model.dto.Address;
import smartshop.model.dto.Order;
import smartshop.service.OrderService;

@Controller
public class OrderController {
    private OrderService orderService;

    @Autowired
    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping(value = "/orders")
    public String getOrders(Model model) {
        model.addAttribute("orders", this.orderService.getOrders());
        return "orders";
    }

    @GetMapping(value = "/order/{orderId}")
    public String getOrder(@PathVariable("orderId") int orderId, Model model) {
        model.addAttribute("order", this.orderService.getOrder(orderId));
        return "orderInfo";
    }

    @GetMapping(value = "/newOrder")
    public String addOrder(Model model) {
        Order order = new Order();
        order.setPlacedOn(LocalDate.now());
        model.addAttribute("order", order);
        return "newOrder";
    }

    @PostMapping(value = "/addOrder")
    public String addOrder(@ModelAttribute("order") Order order) {
        System.out.println("post Order");
        if (order.getId() == 0) {
            this.orderService.addOrder(order);
        } else {
            this.orderService.updateOrder(order);
        }
        return  "redirect:/orders";
    }

//    @GetMapping(value = "/newAddress")
//    public String createNewAddressToOrder(@ModelAttribute("order") Order order, Model model) {
//        model.addAttribute("order", order);
//        model.addAttribute("address", new Address());
//        return "newAddress";
//    }
//
//    @PostMapping(value = "/addAddress/{orderId}")
//    public String addNewAddressToOrder(@ModelAttribute("address") Address address, @PathVariable("orderId") int orderId) {
//        orderService.addAddress(orderId, address);
//        return "redirect:/order/" + orderId;
//    }
}
