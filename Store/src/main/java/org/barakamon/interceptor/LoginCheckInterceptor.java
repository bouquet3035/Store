package org.barakamon.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.barakamon.dto.MemberDTO;
import org.barakamon.mapper.MemberMapper;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import lombok.extern.java.Log;

@Log
public class LoginCheckInterceptor extends HandlerInterceptorAdapter {// 인터페이스를 구현한 추상 클래스로 설계되어있음.일반적으로 디자인 패턴에서 어댑터가
																		// 붙으면 특정 인터페이스 구현 기능.

	@Inject
	private MemberMapper mmapper;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 마지막 handler는 현재 실행하려는 메소드 자체를 의미. 이를 활용하면 현재 실행되는 컨트롤러를 파악하거나 추가적인 메소드를 실행하는
		// 등의 작업가능.
		log.info("-----pre Handle--------------------");

		// Session mid check
		HttpSession session = request.getSession();
		// String mid = (String) session.getAttribute("mid");
		MemberDTO member = (MemberDTO) session.getAttribute("memberDTO");
		log.info("멤버맞니" + member);

		// Login False
		if (member != null) {

			return true;
		}
		Cookie loginCookie = WebUtils.getCookie(request, "barakamonmember");

		if (loginCookie != null) { // 경우의 수 : 세션 쿠키 둘다 있는 경우/ 세션만 있는 경우/ 쿠키만 있는경우
			log.info("이제 쿠킨데..."+ loginCookie.getValue());
			member = mmapper.findByCookie(loginCookie.getValue());
			request.getSession().setAttribute("memberDTO", member);
			// 만약 로그인쿠키만 있고 로그인 세션값이 없다면 보안목적을 위해서 로그인 시도 페이지로 이동시켜라.
			return true;
		}

		log.info("interceptor: Session check true");
		response.sendRedirect("/login");
		return false;
		// return super.preHandle(request, response, handler);
	}

}
