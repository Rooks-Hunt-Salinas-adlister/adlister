package com.codeup.adlister.dao;

import com.codeup.adlister.util.Password;

public interface Passwords {

    Password findByPassword(String password);
    Long insert(Password password);
}
