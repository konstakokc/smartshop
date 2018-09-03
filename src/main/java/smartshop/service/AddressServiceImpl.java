package smartshop.service;

import java.util.List;
import java.util.stream.Collectors;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import smartshop.dao.AddressDao;
import smartshop.model.dto.Address;
import smartshop.model.entity.AddressEntity;

@Service
@Transactional
public class AddressServiceImpl implements AddressService {

    private AddressDao addressDao;
    private ModelMapper modelMapper;

    @Autowired
    public void setAddressDao(AddressDao addressDao) {
        this.addressDao = addressDao;
    }

    @Autowired
    public void setModelMapper(ModelMapper modelMapper) {
        this.modelMapper = modelMapper;
    }

    @Override
    @Transactional
    public void addAddress(Address address) {
        addressDao.addAddress(convertToEntity(address));
    }

    @Override
    @Transactional
    public Address getAddress(int id){
        return convertToDto(addressDao.getAddress(id));
    }

    @Override
    @Transactional
    public void delete(int id) {
        addressDao.deleteAddress(id);
    }

    @Override
    @Transactional
    public List<Address> getAddresses() {
        return addressDao.getAddresses().stream().map(this::convertToDto).collect(Collectors.toList());
    }

    private Address convertToDto(AddressEntity addressEntity) {
        return modelMapper.map(addressEntity, Address.class);
    }

    private AddressEntity convertToEntity(Address address) {
        return modelMapper.map(address, AddressEntity.class);
    }
}
