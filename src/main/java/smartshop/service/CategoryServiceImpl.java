package smartshop.service;

import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import smartshop.dao.CategoryDao;
import smartshop.model.dto.Category;
import smartshop.model.entity.CategoryEntity;

@Service
public class CategoryServiceImpl implements CategoryService {

    private CategoryDao categoryDao;

    @Autowired
    public void setCategoryDao(CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    @Override
    @Transactional
    public void addCategory(Category category) {
        categoryDao.addCategory(GeneralService.map(category, CategoryEntity.class));
    }

    @Override
    @Transactional
    public Category getCategory(int id){
        return GeneralService.map(categoryDao.getCategory(id), Category.class);
    }

    @Override
    @Transactional
    public void deleteCategory(int id) {
        categoryDao.deleteCategory(id);
    }

    @Override
    @Transactional
    public List<Category> getCategories() {
        return categoryDao.getCategoryes().stream().map(e -> GeneralService.map(e, Category.class)).collect(Collectors.toList());
    }
}
