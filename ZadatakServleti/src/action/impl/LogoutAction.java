package action.impl;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import abstractaction.AbstractAction;
import constants.ViewConstants;

public class LogoutAction  extends AbstractAction{

	@Override
	public String execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		request.getSession().invalidate();
		return ViewConstants.LOGIN_VIEW;
	}

	
	
}
