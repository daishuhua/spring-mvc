package com.daishuhua.mvc.service;

import com.daishuhua.mvc.model.Role;

import java.util.List;

/**
 * Role Service Interface
 * Created by shuhuadai on 2017/3/15.
 */
public interface RoleService {
    List<Role> findAllRoles();

    void saveRole(Role role);

    void deleteByRoleCode(String roleCode);

    void updateRole(Role role);

    Role findByRoleCode(String roleCode);

}
