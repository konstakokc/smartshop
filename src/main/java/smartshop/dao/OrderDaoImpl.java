package smartshop.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import smartshop.model.entity.OrderEntity;

@Repository
public class OrderDaoImpl implements OrderDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void addOrder(OrderEntity order) {
        order.getUserEntity().getOrderEntities().add(order);
        entityManager.persist(order);
    }

    @Override
    public OrderEntity getOrder(int id) {
        return entityManager.find(OrderEntity.class, id);
    }

    @Override
    public List<OrderEntity> getOrders() {
        List<OrderEntity> orders = entityManager.createQuery("SELECT o from order o", OrderEntity.class).getResultList();
        orders.forEach(order -> order.setOrderItems(null));
        return orders;
    }

    public List<OrderEntity> getOrdersWithOrderItems() {
        return entityManager
                .createQuery("SELECT distinct o from order o join fetch o.orderItems", OrderEntity.class)
                .getResultList();
    }

    @Override
    public void updateOrder(OrderEntity order) {
        entityManager.merge(order);
    }

    @Override
    public void deleteOrder(int id) {
        entityManager.remove(getOrder(id));
    }
}
