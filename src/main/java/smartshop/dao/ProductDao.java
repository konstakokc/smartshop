package smartshop.dao;

import java.util.List;
import smartshop.model.entity.ProductEntity;

public interface ProductDao {
    void addProduct(ProductEntity product);
    ProductEntity getProduct(int id);
    List<ProductEntity> getProducts();
    void updateProduct(ProductEntity product);
    void deleteProduct(int id);
}
