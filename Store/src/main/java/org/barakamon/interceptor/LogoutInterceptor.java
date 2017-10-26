package org.barakamon.interceptor;



import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.barakamon.dto.MemberDTO;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;




public class LogoutInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("memberDTO");
		if(member != null) {
			session.removeAttribute("memberDTO");
			session.invalidate();
			
			Cookie loginCookie = WebUtils.getCookie(request, "barakamonmember");
			if (loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
			}
		}
		
		return true;
	}

}
