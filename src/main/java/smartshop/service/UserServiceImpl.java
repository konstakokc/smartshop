package smartshop.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
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
        UserEntity userEntity = GeneralService.map(user, UserEntity.class);
        userEntity.setBirthdate(stringToLocalDate(user.getBirthdate()));
        userDao.addUser(userEntity);
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
        UserEntity userEntity = GeneralService.map(user, UserEntity.class);
        userEntity.setBirthdate(stringToLocalDate(user.getBirthdate()));
        userDao.updateUser(userEntity);
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

    private LocalDate stringToLocalDate(String birthdate) {
        if (birthdate != null) {
            if (birthdate.matches("^\\d{2}\\.\\d{2}\\.\\d{4}$")) {
                return LocalDate.parse(birthdate, DateTimeFormatter.ofPattern("dd.MM.yyyy"));
            }
            return LocalDate.parse(birthdate);
        } else {
            System.out.println("B-day = null");
            return null;
        }
    }
}
