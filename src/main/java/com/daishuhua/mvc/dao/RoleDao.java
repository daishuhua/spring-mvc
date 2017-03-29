package com.daishuhua.mvc.dao;

import com.daishuhua.mvc.model.Role;

import java.util.List;

/**
 *
 * Created by shuhuadai on 2017/3/15.
 */
public interface RoleDao {

    List<Role> findAllRoles();

    void save(Role role);

    void deleteByRoleCode(String roleCode);

    Role findByRoleCode(String roleCode);

    Role findById(Integer id);

}
