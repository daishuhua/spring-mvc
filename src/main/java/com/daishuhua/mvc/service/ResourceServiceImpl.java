package com.daishuhua.mvc.service;

import com.daishuhua.mvc.model.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by shuhuadai on 2017/3/15.
 */

@Service
@Transactional
public class ResourceServiceImpl implements ResourceService {

    @Override
    public List<Resource> findAllResources() {
        return null;
    }

    @Override
    public void saveResource(Resource resource) {

    }

    @Override
    public void deleteByResourceCode(String resourceCode) {

    }

    @Override
    public void updateResource(Resource resource) {

    }

    @Override
    public Resource findByResourceCode(String resourceCode) {
        return null;
    }
}
