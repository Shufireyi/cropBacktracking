package com.cbt.system.service;

import java.util.List;

import com.cbt.system.po.AdminInfo;

/**
 * �û���Ϣ�����ҵ���߼��ӿ�
 
 *
 */
public interface AdminInfoService {

	/**
	 * ����û���Ϣ
	 * @param user �û���Ϣ
	 * @return
	 */
	//public boolean addAdminInfo(AdminInfo user);
	
	/**
	 * ����������ѯ�û���Ϣ
	 * @param user ��ѯ����
	 * @return
	 */
	public AdminInfo getAdminInfo(AdminInfo admin);
	
}
