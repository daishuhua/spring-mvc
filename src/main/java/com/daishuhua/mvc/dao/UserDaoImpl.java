package com.daishuhua.mvc.dao;

import com.daishuhua.mvc.model.User;
import org.springframework.stereotype.Repository;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.*;
import java.util.List;

/**
 * Created by shuhuadai on 2017/3/7.
 */
@Repository(value = "userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {

    @Override
    public List<User> findAllUsers() {
        CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
        CriteriaQuery<User> criteriaQuery = criteriaBuilder.createQuery(User.class);
        criteriaQuery.from(User.class);
        TypedQuery<User> typedQuery = getSession().createQuery(criteriaQuery);
        return typedQuery.getResultList();
    }

    @Override
    public List<User> findAllUsers(String... excludeUserName) {
        CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
        CriteriaQuery<User> criteriaQuery = criteriaBuilder.createQuery(User.class);
        Root<User> userRoot = criteriaQuery.from(User.class);
        for (String userName : excludeUserName) {
            criteriaQuery.where(criteriaBuilder.notEqual(userRoot.get("userName"), userName));
        }
        TypedQuery<User> typedQuery = getSession().createQuery(criteriaQuery);
        return typedQuery.getResultList();
    }

    @Override
    public void save(User user) {
        persist(user);
    }

    @Override
    public void deleteByUserName(String userName) {
        CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
        CriteriaDelete<User> criteriaDelete = criteriaBuilder.createCriteriaDelete(User.class);
        Root<User> userRoot = criteriaDelete.from(User.class);
        criteriaDelete.where(criteriaBuilder.equal(userRoot.get("userName"), userName));
        getSession().createQuery(criteriaDelete).executeUpdate();
    }

    @Override
    public User findByUserName(String userName) {
        CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
        CriteriaQuery<User> criteriaQuery = criteriaBuilder.createQuery(User.class);
        Root<User> userRoot = criteriaQuery.from(User.class);
        criteriaQuery.where(criteriaBuilder.equal(userRoot.get("userName"), userName));
        TypedQuery<User> typedQuery = getSession().createQuery(criteriaQuery);
        List<User> userList = typedQuery.getResultList();
        if (userList.isEmpty()) {
            return null;
        } else  {
            return userList.get(0);
        }
    }

    @Override
    public User findById(Integer id) {
        return findByKey(id);
    }

    @Override
    public List<User> findUsersBySuperiorId(Integer superiorId) {
        CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
        CriteriaQuery<User> criteriaQuery = criteriaBuilder.createQuery(User.class);
        Root<User> userRoot = criteriaQuery.from(User.class);
        criteriaQuery.where(criteriaBuilder.equal(userRoot.get("superiorId"), superiorId));
        TypedQuery<User> typedQuery = getSession().createQuery(criteriaQuery);
        List<User> userList = typedQuery.getResultList();
        return userList;
    }
}
