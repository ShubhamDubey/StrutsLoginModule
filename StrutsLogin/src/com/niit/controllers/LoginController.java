package com.niit.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.niit.formbeans.User;

public class LoginController extends Action {

	@Override
	public ActionForward execute(ActionMapping am, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		User user = (User) form;
		String userEmail = user.getEmail();
		String userPassword = user.getPassword();

		if (userEmail.equals("shubham@gmail.com") && userPassword.equals("123")) {
			form.reset(am, request);
			return am.findForward("success");
		} else {
			return am.findForward("failed");
		}

	}
}
