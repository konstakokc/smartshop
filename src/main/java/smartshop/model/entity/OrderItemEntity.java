package smartshop.model.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class OrderItemEntity {

    @ManyToOne
    private ProductEntity product;

    private int quantity;

    private float price;

    public ProductEntity getProductEntity() {
        return product;
    }

    public void setProductEntity(ProductEntity product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
