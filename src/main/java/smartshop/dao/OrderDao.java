package smartshop.dao;

import java.util.List;
import smartshop.model.entity.OrderEntity;

public interface OrderDao {
    void addOrder(OrderEntity order);
    OrderEntity getOrder(int id);
    List<OrderEntity> getOrders();
    void updateOrder(OrderEntity order);
    void deleteOrder(int id);
}
