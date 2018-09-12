package smartshop.service;

import java.util.List;
import smartshop.model.dto.User;

public interface UserService {
    void addUser(User user);
    User getUser(int id);
    List<User> getUsers();
    void deleteUser(int id);
}
