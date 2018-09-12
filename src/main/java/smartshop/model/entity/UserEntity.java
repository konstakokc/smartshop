package smartshop.model.entity;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "user")
public class UserEntity extends BaseEntity {

    private String firstName;
    private String lastName;
    private LocalDate birthdate;
    @NotBlank
    private String email;
    @NotBlank
    private String password;

    @OneToMany()
    private List<AddressEntity> addresses;

    @OneToMany()
    private List<OrderEntity> orders;

    public UserEntity() {
        this.addresses = new ArrayList<>();
        this.orders = new ArrayList<>();
    }

    public UserEntity(String firstName, String lastName, LocalDate birthdate, String email, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.birthdate = birthdate;
        this.email = email;
        this.password = password;
        this.addresses = new ArrayList<>();
        this.orders = new ArrayList<>();
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public LocalDate getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(LocalDate birthdate) {
        this.birthdate = birthdate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<AddressEntity> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<AddressEntity> addresses) {
        this.addresses = addresses;
    }

    public List<OrderEntity> getOrderEntities() {
        return orders;
    }

    public void setOrderEntities(List<OrderEntity> orders) {
        this.orders = orders;
    }
}
