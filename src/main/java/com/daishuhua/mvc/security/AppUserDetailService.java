package com.daishuhua.mvc.security;

import com.daishuhua.mvc.model.Role;
import com.daishuhua.mvc.model.User;
import com.daishuhua.mvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shuhuadai on 2017/3/13.
 */
@Service("userDetailsService")
public class AppUserDetailService implements UserDetailsService {

    @Autowired
    private UserService userService;

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userService.findByUserName(username);
        if (user == null) {
            throw new UsernameNotFoundException("Username not found");
        }
        return new org.springframework.security.core.userdetails.User(
                user.getUserName(), user.getPassword(), user.isEnabled(), !user.isAccountExpired(), !user.isCredentialsExpired(), !user.isLocked(), getGrantedAuthorities(user));

    }

    private List<GrantedAuthority> getGrantedAuthorities(User user) {
        List<GrantedAuthority> authorityList = new ArrayList<>();
        for (Role role : user.getUserRoles()) {
            authorityList.add(new SimpleGrantedAuthority("ROLE_" + role.getCode()));
        }
        return authorityList;
    }
}
