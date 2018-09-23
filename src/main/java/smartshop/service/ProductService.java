package smartshop.service;

import java.util.List;
import smartshop.model.dto.Product;

public interface ProductService {
    void addProduct(Product product);
    Product getProduct(int id);
    List<Product> getProducts();
    void updateProduct(Product product);
    void deleteProduct(int id);

//    void addAddress(int productId, Address address);
}
