package com.cbt.system.po;
/*
 * 
 * ϵͳ����Աʵ����
 */
public class AdminInfo{
	private String adminNum;//�˺�
	private String adminPwd;//����
	
	public String getAdminNum() {
		return adminNum;
	}
	public void setAdminNum(String adminNum) {
		this.adminNum = adminNum;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}
	public String toString()
	{
		return "adminNum:"+adminNum+"	adminPwd:"+adminPwd;
	}
}
