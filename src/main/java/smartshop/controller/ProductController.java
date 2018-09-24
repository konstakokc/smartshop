package smartshop.controller;

import org.apache.commons.lang3.tuple.MutablePair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import smartshop.model.dto.Product;
import smartshop.service.CategoryService;
import smartshop.service.ProductService;

@Controller
public class ProductController {
    private ProductService productService;
    private CategoryService categoryService;

    @Autowired
    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    @Autowired
    public void setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping(value = "/products")
    public String getProducts(Model model) {
        model.addAttribute("products", this.productService.getProducts());
        return "products";
    }

    @GetMapping(value = "/product/{productId}")
    public String getProduct(@PathVariable("productId") int productId, Model model) {
        model.addAttribute("product", this.productService.getProduct(productId));
        return "productInfo";
    }

    @GetMapping(value = "/newProduct")
    public String addProduct(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("categoryList", this.categoryService.getCategories());
        return "newProduct";
    }

    @PostMapping(value = "/addProduct")
    public String addProduct(@ModelAttribute("product") Product product) {
        System.out.println("post Product");
        if (product.getId() == 0) {
            this.productService.addProduct(product);
        } else {
            this.productService.updateProduct(product);
        }
        return  "redirect:/products";
    }

    @GetMapping(value = "/newParameter")
    public String createNewParameterToProduct(@ModelAttribute("product") Product product, Model model) {
        model.addAttribute("productId", product.getId());
        model.addAttribute("parameter", new MutablePair<>());
        return "newParameter";
    }

    @PostMapping(value = "/addParameter/{productId}")
    public String addNewParameterToProduct(@PathVariable("productId") int productId, @ModelAttribute("parameter") MutablePair<String, String> pair) {
//        System.out.println(product);
//        System.out.println(product.getParameters());
        Product product = productService.getProduct(productId);
        product.getParameters().put(pair.left, pair.right);
        productService.updateProduct(product);
        return "redirect:/product/" + product.getId();
    }

//   @GetMapping(value = "/newAddress")
//    public String createNewAddressToProduct(@ModelAttribute("product") Product product, Model model) {
//        model.addAttribute("product", product);
//        model.addAttribute("address", new Address());
//        return "newAddress";
//    }

//    @PostMapping(value = "/addAddress/{productId}")
//    public String addNewAddressToProduct(@ModelAttribute("address") Address address, @PathVariable("productId") int productId) {
//        productService.addAddress(productId, address);
//        return "redirect:/product/" + productId;
//    }
}
