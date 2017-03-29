package com.daishuhua.mvc.service;

import com.daishuhua.mvc.model.Resource;

import java.util.List;

/**
 * Created by shuhuadai on 2017/3/15.
 */
public interface ResourceService {

    List<Resource> findAllResources();

    void saveResource(Resource resource);

    void deleteByResourceCode(String resourceCode);

    void updateResource(Resource resource);

    Resource findByResourceCode(String resourceCode);

}
