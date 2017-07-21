package com.cbt.system.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.JavaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cbt.system.po.AuthorityInfo;
import com.cbt.system.po.ManagerInfo;
import com.cbt.system.po.RoleInfo;
import com.cbt.business.po.WorkerInfo;
import com.cbt.system.po.AdminInfo;
import com.cbt.system.service.AuthorityInfoService;
import com.cbt.system.service.RoleInfoService;
import com.cbt.system.service.AdminInfoService;

/**
 * �û���Ϣ����Ŀ�����
 * @hzhqian
 * * 2015��2��10��
 *
 */
@Controller
@RequestMapping("/system/")
public class AdminInfoController {
	
	@Resource(name="adminInfoServiceImpl")
	private AdminInfoService adminInfoService;
	
	
	@Resource(name="roleInfoServiceImpl")
	private RoleInfoService roleInfoService;
	
	@Resource(name="authorityInfoServiceImpl")
	private AuthorityInfoService authorityInfoService;
	
	/**
	 * �û�ע��n
	 */
	/*
	@RequestMapping("reg.do")
	public @ResponseBody String reg(UserInfo user) {

		Boolean mark = userInfoService.addUserInfo(user);
		if(mark) return "ע��ɹ�";
		else	return "���û����ѱ�ռ��";
	}
	*/
	/**
	 * �û�ע��
	 */
	@RequestMapping("logout.do")
	public @ResponseBody String logout(HttpSession session)
	{
		System.out.println("LOGOUT");
		AdminInfo admin = (AdminInfo) session.getAttribute("admin");
		if(admin!=null)
		{
			session.removeAttribute("managerInfo");
			System.out.println("num:"+admin.getAdminNum());
			System.out.println("num:"+admin.getAdminNum());
			return "true";
		}
		return "false";
	}
	
	/**
	 * �û���¼
	 */
	@RequestMapping("login.do")
	public String login(AdminInfo admin,HttpSession session,Model model)
	{
		System.out.println(admin.toString());
		//��ȡ����¼��Ϣ
		if(admin.getAdminNum()==""||admin.getAdminPwd()=="")
		{
			return "system/login.html";
		}
		else
		{
			//�����ݿ��л�ȡ����
			AdminInfo adminInfo = adminInfoService.getAdminInfo(admin);
			if(adminInfo==null)
			{
				return "system/login.html";
			}
			else
			{
				session.setAttribute("admin", admin);
				return "system/admin.jsp";
			}
		}

	}
	
	

	
	@RequestMapping("test.do")
	public String test(HttpSession session,Model model){
		
		System.out.println("hello world");
		return "view/system/userinfo/user_update";
	}
	
	
	@RequestMapping("updateAdminPwd.do")
	public @ResponseBody String updateAdminPwd(String adminNum,String adminOldPwd,String adminNewPwd)
	{
		Boolean mark = false;
		AdminInfo info = new AdminInfo();
		info.setAdminNum(adminNum);
		info.setAdminPwd(adminOldPwd);
		info = adminInfoService.getAdminInfo(info);
		if(info!=null)
		{
			info.setAdminPwd(adminNewPwd);
			mark = adminInfoService.updateAdminPwd(info);	
			if(mark == true )
				return "2";
			else
			{
				return "1";
			}
		}
		return "0";
	}

	
}
