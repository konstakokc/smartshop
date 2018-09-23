package smartshop.controller;

import java.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import smartshop.model.dto.Address;
import smartshop.model.dto.User;
import smartshop.service.UserService;

@Controller
public class UserController {
    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @GetMapping(value = "/users")
    public String getUsers(Model model) {
        model.addAttribute("users", this.userService.getUsers());
        return "users";
    }

    @GetMapping(value = "/user/{userId}")
    public String getUser(@PathVariable("userId") int userId, Model model) {
        model.addAttribute("user", this.userService.getUser(userId));
        return "userInfo";
    }

    @GetMapping(value = "/newUser")
    public String addUser(Model model) {
        User user = new User();
        user.setBirthdate(LocalDate.now());
        model.addAttribute("user", user);
        return "newUser";
    }

    @PostMapping(value = "/addUser")
    public String addUser(@ModelAttribute("user") User user) {
        System.out.println("post User");
        if (user.getId() == 0) {
            this.userService.addUser(user);
        } else {
            this.userService.updateUser(user);
        }
        return  "redirect:/users";
    }

    @GetMapping(value = "/newAddress")
    public String createNewAddressToUser(@ModelAttribute("user") User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("address", new Address());
        return "newAddress";
    }

    @PostMapping(value = "/addAddress/{userId}")
    public String addNewAddressToUser(@ModelAttribute("address") Address address, @PathVariable("userId") int userId) {
        userService.addAddress(userId, address);
        return "redirect:/user/" + userId;
    }
}
