package org.barakamon.interceptor;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.barakamon.dto.MemberDTO;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.java.Log;

@Log
public class LoginAfterInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object Handler,
			ModelAndView modelAndView) throws Exception {
		log.info("이게 되겠냐");
		if (request.getMethod().equals("GET")) {// get method의 파라미터 값이 "GET"이라면 return
			return;
		}

		Map<String, Object> map = modelAndView.getModel();
		MemberDTO mdto = (MemberDTO) map.get("memberDTO");
		log.info("안될거야 아마" + mdto);
		if (mdto != null) {// memberDTO로 map에 넣어놓은 것이 있으면
			// use session

			request.getSession().setAttribute("memberDTO", mdto);// 여기까지는 세션으로 보낼준비만 한것.(설정은 servlet-context.xml에서)
			String useCookie = request.getParameter("useCookie");
			log.info("나왜이래" + useCookie);
			
			if (useCookie != null) {
				// use cookie
				// 쿠키값에는 한글을 집어넣지 못한다. 넣을경우 인코딩해서 넣어야한다.
				log.info("쿠키 먹은 후");
				
				Cookie loginCookie = new Cookie("barakamonmember", mdto.getMid());
				loginCookie.setMaxAge(24 * 60 * 60 );
				response.addCookie(loginCookie);

			}
				response.sendRedirect("/store/main");
		}
		return;
	}
}
