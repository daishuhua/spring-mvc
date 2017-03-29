package com.daishuhua.mvc.dao;

import com.daishuhua.mvc.model.Resource;

import java.util.List;

/**
 * Created by shuhuadai on 2017/3/15.
 */
public interface ResourceDao {

    List<Resource> findAllResources();

    void save(Resource role);

    void deleteByResourceCode(String resourceCode);

    Resource findByResourceCode(String resourceCode);

    Resource findById(Integer id);

}
