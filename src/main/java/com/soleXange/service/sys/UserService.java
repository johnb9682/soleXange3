package com.soleXange.service.sys;

import java.util.List;

import com.soleXange.model.sys.User;

import core.service.Service;

/**
 * User的业务逻辑层的接口
 * @Author: Bi Ran
 */
public interface UserService extends Service<User> {

	List<User> queryUserWithSubList(List<User> resultList);
	Object[] querySingleUserInfo(Integer userid);
}
