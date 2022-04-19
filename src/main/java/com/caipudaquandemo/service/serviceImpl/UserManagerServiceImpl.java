package com.caipudaquandemo.service.serviceImpl;

import com.caipudaquandemo.base.vo.JSONResult;
import com.caipudaquandemo.entity.UserManager;
import com.caipudaquandemo.mapper.UserManagerMapper;
import com.caipudaquandemo.service.UserManagerService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Iterator;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserManagerServiceImpl implements UserManagerService {

	private final UserManagerMapper userManagerMapper;

	@Override
	public List<UserManager> getAllUser() {
		List<UserManager> allUser = userManagerMapper.getAllUser();
		Iterator<UserManager> iterator = allUser.iterator();
		while (iterator.hasNext()) {
			UserManager next = iterator.next();
			if (next.getPer() == 0) {
				next.setQuanxian("普通用户");
			} else if (next.getPer() == 1) {
				next.setQuanxian("管理员");
			}
		}
		return allUser;
	}


	@Override
	public JSONResult insertUser(UserManager userManager) {
		if (userManager.getQuanxian().equals("管理员")) {
			userManager.setPer(1);
		} else {
			userManager.setPer(0);
		}
		userManagerMapper.inserUser(userManager);
		return JSONResult.success();
	}

	@Override
	public JSONResult deleteUser(Integer uid) {
		userManagerMapper.deleteUser(uid);
		return JSONResult.success();
	}


	@Override
	public List<UserManager> selectUser(UserManager userManager) {

		List<UserManager> userManagers = userManagerMapper.selectUser(userManager);

		Iterator<UserManager> iterator = userManagers.iterator();
		while (iterator.hasNext()) {
			UserManager next = iterator.next();
			if (next.getPer() == 0) {
				next.setQuanxian("普通用户");
			} else if (next.getPer() == 1) {
				next.setQuanxian("管理员");
			}
		}
		return userManagers;
	}
}
