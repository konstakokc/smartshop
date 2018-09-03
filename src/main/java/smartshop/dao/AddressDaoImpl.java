package smartshop.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import smartshop.model.entity.AddressEntity;

@Repository
public class AddressDaoImpl implements AddressDao {

    //Entity Manager
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void addAddress(AddressEntity address) {
        entityManager.persist(address);
    }

    @Override
    public AddressEntity getAddress(int id) {
        // go to db by index
        // got  AddressEntity
        return entityManager.find(AddressEntity.class, id);
    }

    @Override
    public void deleteAddress(int id) {
        entityManager.remove(getAddress(id));
    }

    @Override
    public List<AddressEntity> getAddresses() {
        return entityManager.createQuery("SELECT a from address a").getResultList();
    }
}
