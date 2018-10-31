package com.internousdev.i1810c.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.i1810c.dao.MCategoryDAO;
import com.internousdev.i1810c.dao.UserInfoDAO;
import com.internousdev.i1810c.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class MyPageAction extends ActionSupport implements SessionAware {
	private String name;
	private String furigana;
	private String sex;
	private String email;
	private Map<String, Object> session;

	public String execute(){
		session.remove("reserve");
		String result = LOGIN;
		if (!(session.containsKey("mCategoryDtoList"))) {
			session.put("mCategoryDtoList", (new MCategoryDAO()).getMCategoryList());
		}
		if(session.containsKey("logined")){
			result = ERROR;
			UserInfoDTO dto = new UserInfoDTO();
			dto = (new UserInfoDAO()).getUserInfo(String.valueOf(session.get("loginId")));
			if (dto != null) {
				name = dto.getFamilyName() + "　" + dto.getFirstName();
				furigana = dto.getFamilyNameKana() + "　" + dto.getFirstNameKana();
				sex = dto.getSex() == 0 ? "男性" : "女性";
				email = dto.getEmail();
				result = SUCCESS;
			}
		}
		return result;
	}

	public Map<String,Object> getSession() {
	    return session;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFurigana() {
		return furigana;
	}

	public void setFurigana(String furigana) {
		this.furigana = furigana;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
