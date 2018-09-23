package smartshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import smartshop.model.dto.Category;
import smartshop.service.CategoryService;

@Controller
public class CategoryController {
    private CategoryService categoryService;

    @Autowired
    public void setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping(value = "/categories")
    public String getCategories(Model model) {
        model.addAttribute("categories", this.categoryService.getCategories());
        return "categories";
    }

    @GetMapping(value = "/newCategory")
    public String newCategory(Model model) {
        model.addAttribute("category", new Category());

        return "newCategory";
    }

    @PostMapping(value = "/addCategory")
    public String addCategory(@ModelAttribute("category") Category category) {
        this.categoryService.addCategory(category);

        return "redirect:/categories";
    }
}
