package com.you.can.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.you.can.dao.UserDao;
import com.you.can.dto.UserDto;

@Service("userService")
public class UserServiceImpl implements UserService {

      @Autowired
      UserDao userDao;
      
      @Override
      public int userRegister(UserDto userDto) {
         // TODO Auto-generated method stub
         return userDao.userRegister(userDto);
      }

   }

