package com.daishuhua.mvc.dao;

import com.daishuhua.mvc.model.Resource;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by shuhuadai on 2017/3/15.
 */

@Repository(value = "resourceDao")
public class ResourceDaoImpl extends AbstractDao<Integer, Resource> implements ResourceDao {

    @Override
    public List<Resource> findAllResources() {
        return null;
    }

    @Override
    public void save(Resource role) {

    }

    @Override
    public void deleteByResourceCode(String resourceCode) {

    }

    @Override
    public Resource findByResourceCode(String resourceCode) {
        return null;
    }

    @Override
    public Resource findById(Integer id) {
        return null;
    }
}
