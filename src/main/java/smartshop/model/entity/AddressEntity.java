package smartshop.model.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity(name = "address")
@Table(name = "address")
public class AddressEntity extends BaseEntity {

    private String country;
    private String city;
    private int postalCode;
    private String street;
    private String building;
    private int apartment;

    public AddressEntity() {
    }

    public AddressEntity(String country, String city, int postalCode, String street, String building, int apartment) {
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

    public int getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(int postalCode) {
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

    public int getApartment() {
        return apartment;
    }

    public void setApartment(int apartment) {
        this.apartment = apartment;
    }

    @Override
    public String toString() {
        return "AddressEntity{" +
                "country='" + country + '\'' +
                ", city='" + city + '\'' +
                ", postalCode=" + postalCode +
                ", street='" + street + '\'' +
                ", building='" + building + '\'' +
                ", apartment=" + apartment +
                '}';
    }
}
