package smartshop.model.entity;

import java.util.Map;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class Product extends BaseEntity {

    private String name;
    private float price;
    private float weight;
    private String dimensions;
    private int stockQuantity;

    //------??------//
    //param name, param Value
//    private Map<String, String> parameters;

    @ManyToOne
    private Category category;
}
