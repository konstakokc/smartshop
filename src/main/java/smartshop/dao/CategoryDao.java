package smartshop.dao;

import java.util.List;
import smartshop.model.entity.CategoryEntity;

public interface CategoryDao {
    void addCategory(CategoryEntity address);
    CategoryEntity getCategory(int id);
    void deleteCategory(int id);
    List<CategoryEntity> getCategoryes();
}
