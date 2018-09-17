package smartshop.model.entity;

public class Utils {
    public enum PaymentStatus {
        AWAITING_PAYMENT,
        PROCESSING_PAYMENT,
        PAID
    }

    public enum OrderStatus {
        AWAITING_PAYMENT,
        BEING_PROCESSED,
        AWAITING_SHIPMENT,
        SHIPPED,
        DELIVERED
    }

    public enum ShipmentMethod {
        SELFPICKUP,
        POST,
        COURIER
    }

    public enum PaymentMethod {
        CASH,
        CARD_ONLINE,
        CARD_ON_DELIVERY
    }
}
