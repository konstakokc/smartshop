package smartshop.model.entity;

import javax.persistence.Entity;

@Entity
public class AddressEntity extends BaseEntity {
    // todo change field types
    private String country;
    private String city;
    private String postalCode;
    private String street;
    private String building;
    private String apartment;

    public AddressEntity() {
    }

    public AddressEntity(String country, String city, String postalCode, String street, String building, String apartment) {
        this.country = country;
        this.city = city;
        this.postalCode = postalCode;
        this.street = street;
        this.building = building;
        this.apartment = apartment;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getBuilding() {
        return building;
    }

    public void setBuilding(String building) {
        this.building = building;
    }

    public String getApartment() {
        return apartment;
    }

    public void setApartment(String apartment) {
        this.apartment = apartment;
    }
}
