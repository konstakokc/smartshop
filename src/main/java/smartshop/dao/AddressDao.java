package smartshop.dao;

import java.util.List;
import smartshop.model.entity.AddressEntity;

public interface AddressDao {
    //crud
    void addAddress(AddressEntity address);
    AddressEntity getAddress(int id);
    void deleteAddress(int id);
    List<AddressEntity> getAddresses();
}
