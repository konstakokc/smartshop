package smartshop.model.entity;

import java.time.LocalDate;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;

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

//    @
//    private List<OrderItem> orderItems;

    private ShipmentMethod shipmentMethod;

    private PaymentMethod paymentMethod;

    private PaymentStatus paymentStatus;

    private OrderStatus orderStatus;

    private LocalDate placedOn;
}
