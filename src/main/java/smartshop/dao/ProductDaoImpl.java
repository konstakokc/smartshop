package smartshop.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import smartshop.model.entity.ProductEntity;

@Repository
public class ProductDaoImpl implements ProductDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void addProduct(ProductEntity product) {
        entityManager.persist(product);
    }

    @Override
    public ProductEntity getProduct(int id) {
        return entityManager.find(ProductEntity.class, id);
    }

    @Override
    public List<ProductEntity> getProducts() {
        List<ProductEntity> products = entityManager.createQuery("SELECT p from product p", ProductEntity.class).getResultList();
        products.forEach(product -> product.setParameters(null));
        return products;
    }

    //??
    public List<ProductEntity> getProductsWithProperties() {
        return entityManager
                .createQuery("SELECT distinct p from product p", ProductEntity.class)
                .getResultList();
    }

    @Override
    public void updateProduct(ProductEntity product) {
        entityManager.merge(product);
    }

    @Override
    public void deleteProduct(int id) {
        entityManager.remove(getProduct(id));
    }
}
