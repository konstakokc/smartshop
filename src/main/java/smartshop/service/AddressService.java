package smartshop.service;

import java.util.List;
import smartshop.model.dto.Address;

public interface AddressService {
    void addAddress(Address address);
    Address getAddress(int id);
    void delete(int id);
    List<Address> getAddresses();
}
