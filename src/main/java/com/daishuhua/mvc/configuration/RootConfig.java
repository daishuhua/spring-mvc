package com.daishuhua.mvc.configuration;

import com.daishuhua.mvc.MvcApp;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;

/**
 * Created by shuhuadai on 2017/3/7.
 */
@Configuration
@ComponentScan(basePackageClasses = {MvcApp.class}, excludeFilters = {@ComponentScan.Filter(Controller.class)})
public class RootConfig {

}
