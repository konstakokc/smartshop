package smartshop.service;

import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import smartshop.dao.OrderDao;
import smartshop.model.dto.Address;
import smartshop.model.dto.Order;
import smartshop.model.entity.OrderEntity;

@Service
public class OrderServiceImpl implements OrderService {

    private OrderDao orderDao;

    @Autowired
    public void setOrderDao(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    @Override
    @Transactional
    public void addOrder(Order order) {
        orderDao.addOrder(GeneralService.map(order, OrderEntity.class));
    }

    @Override
    @Transactional
    public Order getOrder(int id) {
        return GeneralService.map(orderDao.getOrder(id), Order.class);
    }

    @Override
    public List<Order> getOrders() {
        return orderDao.getOrders().stream().map(e -> GeneralService.map(e, Order.class)).collect(Collectors.toList());
    }

    @Override
    @Transactional
    public void updateOrder(Order order) {
        orderDao.updateOrder(GeneralService.map(order, OrderEntity.class));
    }

    @Override
    @Transactional
    public void deleteOrder(int id) {
        orderDao.deleteOrder(id);
    }

//    @Override
//    @Transactional
//    public void addAddress(int orderId, Address address) {
//        Order order = getOrder(orderId);
//        order.getAddresses().add(address);
//        updateOrder(order);
//    }
}
