package com.soleXange.dao.sys;

import com.soleXange.model.sys.User;

import core.dao.Dao;

/**
 * User的数据持久层的接口
 * @Author: Bi Ran
 */
public interface UserDao extends Dao<User> {
	Object[] querySingleUserInfo(Integer userid);
}
