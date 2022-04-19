package com.caipudaquandemo.controller;


import com.caipudaquandemo.base.vo.JSONResult;
import com.caipudaquandemo.entity.UserManager;
import com.caipudaquandemo.service.UserManagerService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class UserManagerController {

	private final UserManagerService userManagerService;


	@GetMapping("/getAllUser")
	public JSONResult getAllUserInfo() {
		return JSONResult.success(userManagerService.getAllUser());
	}

	@GetMapping("/selectUser")
	public JSONResult selectUser(UserManager userManager) {

		return JSONResult.success(userManagerService.selectUser(userManager));
	}


	@PostMapping("/insertUser")
	public JSONResult insertUser(UserManager userManager) {
		return JSONResult.success(userManagerService.insertUser(userManager));
	}

	@PostMapping("/deleteUser")
	public JSONResult deleteUser(UserManager userManager) {
		return userManagerService.deleteUser(userManager.getUid());
	}
}
