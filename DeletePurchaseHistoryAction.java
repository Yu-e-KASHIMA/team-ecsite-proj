package com.internousdev.i1810c.action;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.i1810c.dao.MCategoryDAO;
import com.internousdev.i1810c.dao.PurchaseHistoryInfoDAO;
import com.internousdev.i1810c.dto.PurchaseHistoryInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class DeletePurchaseHistoryAction extends ActionSupport implements SessionAware {
	private Map<String, Object> session;

	public String execute(){
		String result = LOGIN;
		if (!(session.containsKey("mCategoryDtoList"))) {
			session.put("mCategoryDtoList", (new MCategoryDAO()).getMCategoryList());
		}
		if(session.containsKey("logined")){
			result = ERROR;
			PurchaseHistoryInfoDAO dao = new PurchaseHistoryInfoDAO();
			int count = dao.deleteAll(String.valueOf(session.get("loginId")));
			if (count > 0) {
				List<PurchaseHistoryInfoDTO> phidtoList = dao.getHistory(String.valueOf(session.get("loginId")));
				Iterator<PurchaseHistoryInfoDTO> it = phidtoList.iterator();
				if (!(it.hasNext())) {
					phidtoList = null;
				}
				session.put("purchaseHistoryInfoDtoList", phidtoList);
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
}
