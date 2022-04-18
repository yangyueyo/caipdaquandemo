
package com.caipudaquandemo.service.serviceImpl;

import com.caipudaquandemo.base.vo.JSONResult;
import com.caipudaquandemo.entity.caiPuManagement;
import com.caipudaquandemo.entity.smallTypeManagement;
import com.caipudaquandemo.mapper.caiPuManagementMapper;
import com.caipudaquandemo.service.caiPuManagementService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class caiPuManagementServiceImpl implements caiPuManagementService {

	//查询所有菜谱
	private final caiPuManagementMapper caiPuManagementMapper;

	@Override
	public List<caiPuManagement> getcaiPu(Integer smallTypeId) {
		final List<caiPuManagement> caiPuManagementList = caiPuManagementMapper.getcaiPu(smallTypeId);

		return caiPuManagementList;
	}

	//查询首页列表推荐
	@Override
	public List<caiPuManagement> getcaiPuId(Integer caiPuTypeId) {
		final List<caiPuManagement> caiPuManagementList = caiPuManagementMapper.getcaiPuId(caiPuTypeId);

		return caiPuManagementList;
	}

	//查询分类小类
	@Override
	public List<smallTypeManagement> getsmallTypeName() {
		List<smallTypeManagement> caiPuList = caiPuManagementMapper.getsmallTypeName();

		return caiPuList;
	}


	@Override
	public JSONResult deleteCaipu(Integer cid) {
		try {
			caiPuManagementMapper.deleteCaipu(cid);
			String message = "删除成功";
			return JSONResult.success(message);
		} catch (Exception e) {
			e.printStackTrace();
			return JSONResult.error("删除失败");
		}
	}

	@Override
	public List<caiPuManagement> searchCaipu(String caipuName) {
		List<caiPuManagement> caiPuManagements = caiPuManagementMapper.searchCaipu(caipuName);

		return caiPuManagements;
	}

	@Override
	public List<caiPuManagement> getCaipuList() {
		List<caiPuManagement> caipuList = caiPuManagementMapper.getCaipuList();

		return caipuList;
	}

	@Override
	public List<caiPuManagement> getcaiPuById(Integer typeId) {
		final List<caiPuManagement> caiPuManagementList = caiPuManagementMapper.getcaiPuById(typeId + 1);

		return caiPuManagementList;
	}

	@Override
	public caiPuManagement getDetailById(Integer id) {
		return caiPuManagementMapper.getDetailById(id);
	}
	//    @Override
//    public String getCaiPuList(QuertInfo quertInfo) {
//        caiPuManagementMapper.getCaipuCounts()
//        return null;
//    }


}
