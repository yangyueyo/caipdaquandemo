package com.caipudaquandemo.controller;

import com.caipudaquandemo.base.vo.JSONResult;
import com.caipudaquandemo.entity.caiPuManagement;
import com.caipudaquandemo.entity.smallTypeManagement;
import com.caipudaquandemo.service.caiPuManagementService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

//菜谱controller
@RestController
@RequiredArgsConstructor
@RequestMapping("/caiPu")
public class caiPuManagementController {


	private final caiPuManagementService caiPuManagementService;

	//查询所有菜谱
	@GetMapping("/getcaiPu")
	public JSONResult getcaiPu(Integer smallTypeId) {
		final List<caiPuManagement> caiPuManagementList = caiPuManagementService.getcaiPu(smallTypeId);
		return JSONResult.success(caiPuManagementList);
	}

	//分类页面根据类别查询菜谱
	@GetMapping("/getcaiPuById{type}")
	public JSONResult getcaiPuById(Integer type) {
		final List<caiPuManagement> caiPuManagementList = caiPuManagementService.getcaiPuById(type);
		System.out.println(type);
		return JSONResult.success(caiPuManagementList);
	}

	//查询首页列表推荐
	@PostMapping("/getcaiPuId")
	public JSONResult getcaiPuId(@RequestBody Integer caiPuTypeId) {
		final List<caiPuManagement> caiPuManagementList = caiPuManagementService.getcaiPuId(caiPuTypeId);
		return JSONResult.success(caiPuManagementList);
	}


	//查询菜谱小类
	@GetMapping("/getsmallTypeName")
	public JSONResult getsmallTypeName() {
		final List<smallTypeManagement> caiPuList = caiPuManagementService.getsmallTypeName();
		return JSONResult.success(caiPuList);
	}


	//根据id查询菜详情
	@GetMapping("/getDetailById")
	public JSONResult getDetailById(@RequestParam Integer dId) {
		final caiPuManagement caiPuManagement = caiPuManagementService.getDetailById(dId);
		return JSONResult.success(caiPuManagement);
	}


	@GetMapping("/getCaiPuList")
	public JSONResult getCaipuList() {

		List<caiPuManagement> caipuList = caiPuManagementService.getCaipuList();

		return JSONResult.success(caipuList);

	}

	@GetMapping("/searchCaipu")
	public JSONResult searchCaipu(caiPuManagement caiPuManagement) {
		return JSONResult.success(caiPuManagementService.searchCaipu(caiPuManagement.getCaiPuName()));
	}


	@PostMapping("/deleteCaipu")
	public JSONResult deleteCaipu(caiPuManagement caiPuManagement) {
		return caiPuManagementService.deleteCaipu(caiPuManagement.getCid());
	}

}
