package smartshop.service;

import java.util.List;
import smartshop.model.dto.Address;
import smartshop.model.dto.User;

public interface UserService {
    void addUser(User user);
    User getUser(int id);
    List<User> getUsers();
    void updateUser(User user);
    void deleteUser(int id);

    void addAddress(int userId, Address address);
}
