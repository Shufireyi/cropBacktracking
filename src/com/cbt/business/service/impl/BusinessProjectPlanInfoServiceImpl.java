package com.cbt.business.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cbt.business.mapper.BusinessProjectPlanInfoMapper;
import com.cbt.business.po.BusinessProjectPlanInfo;
import com.cbt.business.service.BusinessProjectPlanInfoService;

@Service
public class BusinessProjectPlanInfoServiceImpl implements BusinessProjectPlanInfoService{

	@Resource(name="businessProjectPlanInfoMapper")
	private BusinessProjectPlanInfoMapper businessProjectPlanInfoMapper;
	
	@Override
	public Boolean addBusinessProjectPlan(BusinessProjectPlanInfo info) {
		// TODO Auto-generated method stub
		int i = businessProjectPlanInfoMapper.addBusinessProjectPlan(info);
		if(i > 0 )
			return true;
		return false;
	}

	@Override
	public List<BusinessProjectPlanInfo> getPageBusinessProjectPlans(int nowpage, int rows , int businessId,String searchKey) {
		// TODO Auto-generated method stub
		int startrow=(nowpage-1)*rows;
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("startrow",startrow);
		map.put("rows", rows);   
		map.put("businessId", businessId);
		map.put("searchKey", searchKey);
		
		return businessProjectPlanInfoMapper.getPageBusinessProjectPlans(map);
	}

	@Override
	public int getBusinessProjectPlansCount(int businessId,String searchKey)
	{
		// TODO Auto-generated method stub
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("businessId",businessId);
		map.put("searchKey", searchKey);
		return businessProjectPlanInfoMapper.getBusinessProjectPlansCount(map);
	}

	@Override
	public Boolean updateBusinessProjectPlan(BusinessProjectPlanInfo info) {
		// TODO Auto-generated method stub
		try {
			int i = businessProjectPlanInfoMapper.updateBusinessProjectPlan(info);
			if(i>0){
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public Boolean delBusinessProjectPlan(List<BusinessProjectPlanInfo> list) {
		// TODO Auto-generated method stub
		Boolean mark = true;
		for(int i=0;i<list.size();i++)
		{
			int k = businessProjectPlanInfoMapper.delBusinessProjectPlan(list.get(i));
			if(i<=0){
				return false;
			}
		}
		return true;
	}
	
	@Override
	public List<BusinessProjectPlanInfo> getProjectInfos(String businessId)
	{
		return businessProjectPlanInfoMapper.getProjectInfos(businessId);
	}

	@Override
	public Boolean insertProductPictureByProject_btCode(String project_btCode, String productPicture) {
		// TODO Auto-generated method stub	
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("project_btCode",project_btCode);
		map.put("productPicture", productPicture);   
		
		int i = businessProjectPlanInfoMapper.insertProductPictureByProject_btCode(map);
		if(i>0)
			return true;
		return false;
	}

}
