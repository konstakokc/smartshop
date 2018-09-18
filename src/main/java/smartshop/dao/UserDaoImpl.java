package smartshop.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import smartshop.model.entity.UserEntity;

@Repository
public class UserDaoImpl implements UserDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void addUser(UserEntity user) {
        entityManager.persist(user);
    }

    @Override
    public UserEntity getUser(int id) {
        return entityManager.find(UserEntity.class, id);
    }

    @Override
    public List<UserEntity> getUsers() {
        return entityManager
                .createQuery("SELECT u from user u join fetch u.addresses", UserEntity.class)
                .getResultList();
    }

    @Override
    public void deleteUser(int id) {
        entityManager.remove(getUser(id));
    }
}
