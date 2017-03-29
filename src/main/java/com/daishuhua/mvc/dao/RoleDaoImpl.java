package com.daishuhua.mvc.dao;

import com.daishuhua.mvc.model.Role;
import org.springframework.stereotype.Repository;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaDelete;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

/**
 * access role data
 * Created by shuhuadai on 2017/3/15.
 */
@Repository(value = "roleDao")
public class RoleDaoImpl extends AbstractDao<Integer, Role> implements RoleDao {

    @Override
    public List<Role> findAllRoles() {
        CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
        CriteriaQuery<Role> criteriaQuery = criteriaBuilder.createQuery(Role.class);
        criteriaQuery.from(Role.class);
        TypedQuery<Role> typedQuery = getSession().createQuery(criteriaQuery);
        return typedQuery.getResultList();
    }

    @Override
    public void save(Role role) {
        persist(role);
    }

    @Override
    public void deleteByRoleCode(String roleCode) {
        CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
        CriteriaDelete<Role> criteriaDelete = criteriaBuilder.createCriteriaDelete(Role.class);
        Root<Role> roleRoot = criteriaDelete.from(Role.class);
        criteriaDelete.where(criteriaBuilder.equal(roleRoot.get("code"), roleCode));
        getSession().createQuery(criteriaDelete).executeUpdate();
    }

    @Override
    public Role findByRoleCode(String roleCode) {
        CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
        CriteriaQuery<Role> criteriaQuery = criteriaBuilder.createQuery(Role.class);
        Root<Role> roleRoot = criteriaQuery.from(Role.class);
        criteriaQuery.where(criteriaBuilder.equal(roleRoot.get("code"), roleCode));
        TypedQuery<Role> typedQuery = getSession().createQuery(criteriaQuery);
        List<Role> roleList = typedQuery.getResultList();
        if (roleList.isEmpty()) {
            return null;
        } else {
            return roleList.get(0);
        }
    }

    @Override
    public Role findById(Integer id) {
        return findByKey(id);
    }
}
