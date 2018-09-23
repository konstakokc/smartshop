package smartshop.service;

import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import smartshop.dao.UserDao;
import smartshop.model.dto.Address;
import smartshop.model.dto.User;
import smartshop.model.entity.UserEntity;

@Service
public class UserServiceImpl implements UserService {

    private UserDao userDao;

    @Autowired
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    @Transactional
    public void addUser(User user) {
        userDao.addUser(GeneralService.map(user, UserEntity.class));
    }

    @Override
    @Transactional
    public User getUser(int id) {
        return GeneralService.map(userDao.getUser(id), User.class);
    }

    @Override
    public List<User> getUsers() {
        return userDao.getUsers().stream().map(e -> GeneralService.map(e, User.class)).collect(Collectors.toList());
    }

    @Override
    @Transactional
    public void updateUser(User user) {
        userDao.updateUser(GeneralService.map(user, UserEntity.class));
    }

    @Override
    @Transactional
    public void deleteUser(int id) {
        userDao.deleteUser(id);
    }

    @Override
    @Transactional
    public void addAddress(int userId, Address address) {
        User user = getUser(userId);
        user.getAddresses().add(address);
        updateUser(user);
    }
}
