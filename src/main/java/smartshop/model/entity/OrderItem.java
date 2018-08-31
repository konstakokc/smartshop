package smartshop.model.entity;

import javax.persistence.ManyToOne;

public class OrderItem {

    @ManyToOne
    private Product product;

    private int quantity;
}
