package com.daishuhua.mvc.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;

/**
 * Created by shuhuadai on 2017/3/8.
 */
public abstract class AbstractDao<PK extends Serializable, T> {

    private final Class<T> persistentClass;


    @SuppressWarnings("unchecked")
    public AbstractDao() {
        this.persistentClass = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
    }

    @Autowired
    private SessionFactory sessionFactory;

    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    protected void persist(T entity) {
        getSession().persist(entity);
    }

    protected void delete(T entity) {
        getSession().delete(entity);
    }

    protected void update(T entity) {
        getSession().update(entity);
    }

    protected T findByKey(PK key) {
        return getSession().find(persistentClass, key);
    }
}
