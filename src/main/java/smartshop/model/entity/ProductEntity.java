package smartshop.model.entity;

import java.util.HashMap;
import java.util.Map;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity(name = "product")
@Table(name = "product")
public class ProductEntity extends BaseEntity {

    private String name;
    private float price;
    private float weight;
    private String dimensions;
    private int stockQuantity;

    //------??------//
    //param name, param Value
    @ElementCollection
    private Map<String, String> parameters;

    @ManyToOne
    private CategoryEntity category;

    public ProductEntity() {
        parameters = new HashMap<>();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public String getDimensions() {
        return dimensions;
    }

    public void setDimensions(String dimensions) {
        this.dimensions = dimensions;
    }

    public int getStockQuantity() {
        return stockQuantity;
    }

    public void setStockQuantity(int stockQuantity) {
        this.stockQuantity = stockQuantity;
    }

    public CategoryEntity getCategoryEntity() {
        return category;
    }

    public void setCategoryEntity(CategoryEntity category) {
        this.category = category;
    }

    public Map<String, String> getParameters() {
        return parameters;
    }

    public void setParameters(Map<String, String> parameters) {
        this.parameters = parameters;
    }

    public CategoryEntity getCategory() {
        return category;
    }

    public void setCategory(CategoryEntity category) {
        this.category = category;
    }
}
