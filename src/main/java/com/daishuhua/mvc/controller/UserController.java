package com.daishuhua.mvc.controller;

import com.daishuhua.mvc.model.User;
import com.daishuhua.mvc.service.RoleService;
import com.daishuhua.mvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.List;

/**
 * handle user data
 * Created by shuhuadai on 2017/3/7.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    RoleService roleService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String showUserList() {
        return "userlist";
    }

    @ResponseBody
    @RequestMapping(value = {"/list"}, method = RequestMethod.POST)
    public List<User> listUsers() {
        String userName = getPrincipal();
        return userService.getSubordinateUser(userName);
    }

    @RequestMapping(value = "/newuser", method = RequestMethod.GET)
    public String newUser(ModelMap modelMap) {
        String loginUserName = getPrincipal();
        User user = new User();
        user.setSuperiorId(userService.findByUserName(loginUserName).getId());
        modelMap.addAttribute("user", user);
        modelMap.addAttribute("loggedinuser", loginUserName);
        modelMap.addAttribute("roleList", roleService.findAllRoles());
        return "newuser";
    }

    @RequestMapping(value = "/saveuser", method = RequestMethod.POST)
    public String saveUser(@Valid User user, BindingResult result, ModelMap modelMap) {

        if (result.hasErrors()) {
            return "newuser";
        }

        userService.saveUser(user);
        return "redirect:list";
    }

    @RequestMapping(value = {"/delete-user-{userName}"}, method = RequestMethod.GET)
    public String deleteUser(@PathVariable String userName) {
        userService.deleteByUserName(userName);
        return "redirect:list";
    }

    @RequestMapping(value = {"/edit-user-{userName}"}, method = RequestMethod.GET)
    public String editUser(@PathVariable String userName, ModelMap modelMap) {
        User user = userService.findByUserName(userName);
        modelMap.addAttribute("user", user);
        modelMap.addAttribute("loggedinuser", getPrincipal());
        return "edituser";
    }

    @RequestMapping(value = {"/edit-user-{userName}"}, method = RequestMethod.POST)
    public String updateUser(User user) {
        userService.updateUser(user);
        return "redirect:list";
    }

    /**
     * This method returns the principal[user-name] of logged-in user.
     */
    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

}
