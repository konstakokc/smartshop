package smartshop.service;

import java.util.List;
import smartshop.model.dto.Category;

public interface CategoryService {
    void addCategory(Category category);
    Category getCategory(int id);
    void deleteCategory(int id);
    List<Category> getCategories();
}
