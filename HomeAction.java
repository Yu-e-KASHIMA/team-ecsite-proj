package com.internousdev.i1810c.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.i1810c.dao.MCategoryDAO;
import com.internousdev.i1810c.util.CommonUtility;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware {
	private Map<String, Object> session;

	public String execute(){
		if(session.containsKey("reserve")){
			session.put("loginId", session.get("reserve"));
			session.put("logined", 1);
			session.remove("reserve");
		}else if (!(session.containsKey("logined"))) {
			session.put("logined", 0);
			if (!(session.containsKey("tempUserId"))) {
				session.put("tempUserId", (new CommonUtility()).getRandomValue());
			}
		}
		if (!(session.containsKey("mCategoryDtoList"))) {
			session.put("mCategoryDtoList", (new MCategoryDAO()).getMCategoryList());
		}
		return SUCCESS;
	}

	public Map<String,Object> getSession() {
	    return session;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
