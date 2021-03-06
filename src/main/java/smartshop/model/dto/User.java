package smartshop.model.dto;

import java.util.ArrayList;
import java.util.List;

public class User extends BaseDto {
    private String firstName;
    private String lastName;
    private String birthdate;
    private String email;
    private String password;

    private List<Address> addresses;
    private List<Order> orders;

    public User() {
        addresses = new ArrayList<>();
        orders = new ArrayList<>();
//        birthdate = LocalDate.MIN;
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

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
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

    public List<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<Address> addresses) {
        this.addresses = addresses;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    @Override
    public String toString() {
        return "User{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", birthdate=" + birthdate +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", addresses=" + addresses +
                ", orders=" + orders +
                '}';
    }
}
