package cn.edu.nankai.graduationdesign.service;

import cn.edu.nankai.graduationdesign.model.User;

public interface UserService {
    int removeUserByUserID(Integer userId);

    int addUser(User record);

    User getUserByUserID(Integer userId);
    
    User getUserByUserName(String userName);

    int changeUserByUserID(User record);
}