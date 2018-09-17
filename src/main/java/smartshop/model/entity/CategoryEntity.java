package smartshop.model.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity(name = "category")
@Table(name = "category")
public class CategoryEntity extends BaseEntity {
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "CategoryEntity{" +
                "name='" + name + '\'' +
                '}';
    }
}
