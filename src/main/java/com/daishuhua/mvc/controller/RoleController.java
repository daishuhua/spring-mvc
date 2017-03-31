package com.daishuhua.mvc.controller;

import com.daishuhua.mvc.model.Role;
import com.daishuhua.mvc.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * handle role data
 * Created by shuhuadai on 2017/3/15.
 */

@Controller
@RequestMapping("/role")
public class RoleController {

    @Autowired
    RoleService roleService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String showRoleList() {
        return "rolelist";
    }

    @ResponseBody
    @RequestMapping(value = {"/list"}, method = RequestMethod.POST)
    public List<Role> listRoles() {
        List<Role> roleList = roleService.findAllRoles();
        return roleList;
    }

    @RequestMapping(value = "/newrole", method = RequestMethod.GET)
    public String newRole(ModelMap modelMap) {
        Role role = new Role();
        modelMap.addAttribute("role", role);
        return "newrole";
    }

    @RequestMapping(value = "/saverole", method = RequestMethod.POST)
    public String saveRole(Role role) {
        roleService.saveRole(role);
        return "redirect:list";
    }

    @RequestMapping(value = {"/delete-role-{roleCode}"}, method = RequestMethod.GET)
    public String deleteRole(@PathVariable String roleCode) {
        roleService.deleteByRoleCode(roleCode);
        return "redirect:list";
    }

    @RequestMapping(value = {"/edit-role-{roleCode}"}, method = RequestMethod.GET)
    public String editRole(@PathVariable String roleCode, ModelMap modelMap) {
        Role role = roleService.findByRoleCode(roleCode);
        modelMap.addAttribute("role", role);
        return "editrole";
    }

    @RequestMapping(value = {"/edit-role-{roleCode}"}, method = RequestMethod.POST)
    public String updateRole(Role role) {
        roleService.updateRole(role);
        return "redirect:list";
    }

}
