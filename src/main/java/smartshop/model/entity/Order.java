package smartshop.model.entity;

import java.time.LocalDate;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Order extends BaseEntity {

    enum PaymentStatus {
        AWAITING_PAYMENT,
        PROCESSING_PAYMENT,
        PAID
    }

    enum OrderStatus {
        AWAITING_PAYMENT,
        BEING_PROCESSED,
        AWAITING_SHIPMENT,
        SHIPPED,
        DELIVERED
    }

    enum ShipmentMethod {
        SELFPICKUP,
        POST,
        COURIER
    }

    enum PaymentMethod {
        CASH,
        CARD_ONLINE,
        CARD_ON_DELIVERY
    }

    @ManyToOne
    private User user;

//    @ManyToOne ?
    private AddressEntity address;

    @OneToMany
    private List<OrderItem> orderItems;

    private LocalDate placedOn;

    private float totalPrice;

    private ShipmentMethod shipmentMethod;

    private PaymentMethod paymentMethod;

    private PaymentStatus paymentStatus;

    private OrderStatus orderStatus;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public AddressEntity getAddress() {
        return address;
    }

    public void setAddress(AddressEntity address) {
        this.address = address;
    }

    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(List<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }

    public LocalDate getPlacedOn() {
        return placedOn;
    }

    public void setPlacedOn(LocalDate placedOn) {
        this.placedOn = placedOn;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public ShipmentMethod getShipmentMethod() {
        return shipmentMethod;
    }

    public void setShipmentMethod(ShipmentMethod shipmentMethod) {
        this.shipmentMethod = shipmentMethod;
    }

    public PaymentMethod getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(PaymentMethod paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public PaymentStatus getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(PaymentStatus paymentStatus) {
        this.paymentStatus = paymentStatus;
    }

    public OrderStatus getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(OrderStatus orderStatus) {
        this.orderStatus = orderStatus;
    }
}
