package com.defynu.Model;

import org.springframework.context.annotation.Scope;

@Scope("session")
public class SessionVariable {
	static String uname= null;

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}
	

}
