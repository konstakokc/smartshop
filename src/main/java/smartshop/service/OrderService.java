package smartshop.service;

import java.util.List;
import smartshop.model.dto.Address;
import smartshop.model.dto.Order;

public interface OrderService {
    void addOrder(Order order);
    Order getOrder(int id);
    List<Order> getOrders();
    void updateOrder(Order order);
    void deleteOrder(int id);

//    void addAddress(int orderId, Address address);
}
