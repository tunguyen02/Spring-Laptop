package ndt.laptop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import ndt.laptop.domain.Role;
import ndt.laptop.domain.User;
import ndt.laptop.repository.RoleRepository;
import ndt.laptop.repository.UserRepository;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public List<User> getUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public void deleteUserById(long id) {
        this.userRepository.deleteById(id);
    }

    public String handleHello() {
        return "Hello";
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }
}
