package com.info.springsecurity.controller.angular;

import com.info.springsecurity.config.utility.SecurityUtility;
import com.info.springsecurity.model.User;
import com.info.springsecurity.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;


@RestController
@RequestMapping(value = "/user")
public class UserController {

    private final UserRepository userRepository;

    @Autowired
    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/users/{id}")
    public User findUserById(@PathVariable("id") User user) {
        return user;
    }

    @GetMapping("/userForm")
//    public Page<User> findAllUsers(Model model, Pageable pageable) {
    public ModelAndView findAllUsers(Model model, Pageable pageable) {
        List<User> userList = userRepository.findAll();
        model.addAttribute("users", userList);
        ModelAndView view = new ModelAndView("/angular/users");
        return view;
    }

    /*@GetMapping("/users")
    public Page<User> showAllUsers(Model model, Pageable pageable) {
        return userRepository.findAll(pageable);
    }*/

    @GetMapping("/users")
    public List<User> showAllUsers(Model model) {
        return userRepository.findAll();
    }

    @GetMapping("/sortedusers")
    public Page<User> findAllUsersSortedByName() {
        Pageable pageable = PageRequest.of(0, 5, Sort.by("name"));
        return userRepository.findAll(pageable);
    }

    /*@GetMapping("/filteredusers")
    public Iterable<User> getUsersByQuerydslPredicate(@QuerydslPredicate(root = User.class) Predicate predicate) {
        return userRepository.findAll(predicate);
    }*/

    @GetMapping("/addUser")
    public User addUser(Model model, User user) {
        User user1 = userRepository.save(user);
        return user1;
    }

    @Cacheable(value = "getAllUser", condition="#name.length < 20")
    @RequestMapping(value = "/getAllUser", method = RequestMethod.GET)
    public List<User> getAllUser() {
        try {
            System.out.println("=======Going to sleep for 5 seconds=========");
            Thread.sleep(5000);
        } catch (Exception e) {
            e.printStackTrace();
        }
        List<User> userList = userRepository.findAll();
        System.out.println("========Getting user from database {end}=======");
        return userList;
    }

    @CachePut(value = "user", key = "#user.id")
    @RequestMapping(value = "/fetchUserById/{userId}", method = RequestMethod.GET)
    public User fetchUserById(Model model, @PathVariable String userId) {
        User user = userRepository.findById(Long.valueOf(userId)).get();
        return user;
    }

    @CacheEvict(value = "users", allEntries = true)
    @DeleteMapping("/{id}")
    public void deleteUserByID(@PathVariable String id) {
        System.out.println("deleting person with id " + id);
        Optional<User> user = userRepository.findById(Long.parseLong(id));
        userRepository.delete(user);
    }

    @CachePut(value = "user")
    @RequestMapping(value = {"/user/useredit/{id}"}, method = RequestMethod.GET)
    public String editUser(@PathVariable String id, Model model) {
        Optional<User> user = userRepository.findById(Long.parseLong(id));


        return "/dashboard/user/edit_user";
    }

}
