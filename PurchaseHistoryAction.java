package com.internousdev.i1810c.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.i1810c.dao.MCategoryDAO;
import com.internousdev.i1810c.dao.PurchaseHistoryInfoDAO;
import com.internousdev.i1810c.dto.PurchaseHistoryInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class PurchaseHistoryAction extends ActionSupport implements SessionAware {
	private Map<String, Object> session;
	private List<PurchaseHistoryInfoDTO> purchaseHistoryInfoDtoList;

	public String execute(){
		String result = LOGIN;
		if (!(session.containsKey("mCategoryDtoList"))) {
			session.put("mCategoryDtoList", (new MCategoryDAO()).getMCategoryList());
		}
		if(session.containsKey("logined")){
			result = ERROR;
			purchaseHistoryInfoDtoList = (new PurchaseHistoryInfoDAO()).getHistory(String.valueOf(session.get("loginId")));
			if (!(purchaseHistoryInfoDtoList.iterator().hasNext())) {
				purchaseHistoryInfoDtoList = null;
			}
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

	public List<PurchaseHistoryInfoDTO> getPurchaseHistoryInfoDtoList() {
		return purchaseHistoryInfoDtoList;
	}

	public void setPurchaseHistoryInfoDtoList(List<PurchaseHistoryInfoDTO> purchaseHistoryInfoDtoList) {
		this.purchaseHistoryInfoDtoList = purchaseHistoryInfoDtoList;
	}
}
