package smartshop.service;

import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import smartshop.dao.AddressDao;
import smartshop.model.dto.Address;
import smartshop.model.entity.AddressEntity;

@Service
public class AddressServiceImpl implements AddressService {

    private AddressDao addressDao;

    @Autowired
    public void setAddressDao(AddressDao addressDao) {
        this.addressDao = addressDao;
    }

    @Override
    @Transactional
    public void addAddress(Address address) {
        addressDao.addAddress(GeneralService.map(address, AddressEntity.class));
    }

    @Override
    @Transactional
    public Address getAddress(int id){
        return GeneralService.map(addressDao.getAddress(id), Address.class);
    }

    @Override
    @Transactional
    public void delete(int id) {
        addressDao.deleteAddress(id);
    }

    @Override
    @Transactional
    public List<Address> getAddresses() {
        return addressDao.getAddresses().stream().map(e -> GeneralService.map(e, Address.class)).collect(Collectors.toList());
    }
}
