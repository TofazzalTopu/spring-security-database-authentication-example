package com.info.springsecurity.config;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.info.springsecurity.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.info.springsecurity.repository.UserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        try {
            List<User> userList = userRepository.findAll();
            User user = userRepository.findByUsername(username);

            Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
            grantedAuthorities.add(new SimpleGrantedAuthority("USER"));
            grantedAuthorities.add(new SimpleGrantedAuthority("ADMIN"));

            return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(),
                    grantedAuthorities);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
