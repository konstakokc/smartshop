package smartshop.service;

import smartshop.dao.AddressDao;
import smartshop.model.dto.Address;
import smartshop.model.entity.AddressEntity;

public class AddressService {
    private AddressDao addressDao = new AddressDao();
    public Address getAddress(int ind){
        AddressEntity address = addressDao.getAddress(5);
        Address address1 = new Address();
        address1.setStreet(address.getStreet());
        return address1;
    }

}
