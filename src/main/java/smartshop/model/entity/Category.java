package smartshop.model.entity;

import javax.persistence.Entity;

@Entity
public class Category extends BaseEntity {
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
