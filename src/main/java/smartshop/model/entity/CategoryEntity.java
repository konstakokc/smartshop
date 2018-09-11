package smartshop.model.entity;

import javax.persistence.Entity;

@Entity
public class CategoryEntity extends BaseEntity {
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
