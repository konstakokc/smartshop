package smartshop.service;

import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import smartshop.dao.ProductDao;
import smartshop.model.dto.Address;
import smartshop.model.dto.Product;
import smartshop.model.entity.ProductEntity;

@Service
public class ProductServiceImpl implements ProductService {

    private ProductDao productDao;

    @Autowired
    public void setProductDao(ProductDao productDao) {
        this.productDao = productDao;
    }

    @Override
    @Transactional
    public void addProduct(Product product) {
        productDao.addProduct(GeneralService.map(product, ProductEntity.class));
    }

    @Override
    @Transactional
    public Product getProduct(int id) {
        return GeneralService.map(productDao.getProduct(id), Product.class);
    }

    @Override
    public List<Product> getProducts() {
        return productDao.getProducts().stream().map(e -> GeneralService.map(e, Product.class)).collect(Collectors.toList());
    }

    @Override
    @Transactional
    public void updateProduct(Product product) {
        productDao.updateProduct(GeneralService.map(product, ProductEntity.class));
    }

    @Override
    @Transactional
    public void deleteProduct(int id) {
        productDao.deleteProduct(id);
    }

//    @Override
//    @Transactional
//    public void addAddress(int productId, Address address) {
//        Product product = getProduct(productId);
//        product.getAddresses().add(address);
//        updateProduct(product);
//    }
}
