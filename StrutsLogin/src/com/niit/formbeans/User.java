package com.niit.formbeans;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class User extends ActionForm {

	private String email;
	private String password;

	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		ActionErrors actionErrors = new ActionErrors();
		if (email.equals("")) {
			actionErrors.add("email_error", new ActionMessage("email_error"));
		}

		if (password.equals("")) {
			actionErrors.add("password_error", new ActionMessage("password_error"));

		}
		return actionErrors;
	}

	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		email = "";
		password = "";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
