package com.cbt.system.mapper;

import java.util.List;
import java.util.Map;

import com.cbt.system.po.AdminInfo;

/**
 * �û���Ϣ�����mapper
 
 *
 */
public interface AdminInfoMapper {

	/**
	 * ����û���Ϣ
	 * @param user �û���Ϣ
	 * @return
	 */
	//public int addUserInfo(UserInfo user);
	
	/**
	 * ��ѯ�û���Ϣ
	 * @param user
	 * @return
	 */
	public AdminInfo getAdminInfo(AdminInfo user);
	
	
	public int updateAdminPwd(AdminInfo info);
	
	/**
	 * �޸��û���Ϣ
	 * @param user �û���Ϣ
	 * @return
	 */
	//public int updateUserInfo(UserInfo user);
	
	/**
	 * ��ѯ���з�רҵ�û�
	 * 
	 */
	//public List<UserInfo> getGerenUserInfo(Map<String, Object> map);
	
	/**
	 * ��ѯ�ܹ��ж�����User����
	 * @return int
	 */
	//public int getGerenUserCount(Map<String,Object> map);
	
}
