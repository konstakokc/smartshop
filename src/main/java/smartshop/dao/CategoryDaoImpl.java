package smartshop.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import smartshop.model.entity.CategoryEntity;

@Repository
public class CategoryDaoImpl implements CategoryDao {

    //Entity Manager
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void addCategory(CategoryEntity category) {
        entityManager.persist(category);
    }

    @Override
    public CategoryEntity getCategory(int id) {
        return entityManager.find(CategoryEntity.class, id);
    }

    @Override
    public void deleteCategory(int id) {
        entityManager.remove(getCategory(id));
    }

    @Override
    public List<CategoryEntity> getCategoryes() {
        return entityManager.createQuery("SELECT a from category a", CategoryEntity.class).getResultList();
    }
}
