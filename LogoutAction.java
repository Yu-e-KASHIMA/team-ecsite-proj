package com.internousdev.i1810c.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.i1810c.dao.UserInfoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements SessionAware {
	private Map<String, Object> session;

	public String execute(){
		String result = ERROR;
		if ((new UserInfoDAO()).logout(String.valueOf(session.get("loginId"))) > 0) {
			String loginId = String.valueOf(session.get("loginId"));
			boolean saveFlg = Boolean.valueOf(String.valueOf(session.get("saveFlg")));
			session.clear();
			session.put("savedLoginId", loginId);
			session.put("saveFlg", saveFlg);
			result = SUCCESS;
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
}
