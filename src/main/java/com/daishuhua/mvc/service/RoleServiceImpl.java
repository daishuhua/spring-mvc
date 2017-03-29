package com.daishuhua.mvc.service;

import com.daishuhua.mvc.dao.RoleDao;
import com.daishuhua.mvc.model.Role;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by shuhuadai on 2017/3/15.
 */
@Service
@Transactional
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleDao roleDao;

    @Override
    public List<Role> findAllRoles() {
        return roleDao.findAllRoles();
    }

    @Override
    public void saveRole(Role role) {
        roleDao.save(role);
    }

    @Override
    public void deleteByRoleCode(String roleCode) {
        roleDao.deleteByRoleCode(roleCode);
    }

    @Override
    public void updateRole(Role role) {
        Role entity = roleDao.findById(role.getId());
        if (entity != null) {
            BeanUtils.copyProperties(role, entity);
        }
    }

    @Override
    public Role findByRoleCode(String roleCode) {
        Role entity = roleDao.findByRoleCode(roleCode);
        return entity;
    }

}
