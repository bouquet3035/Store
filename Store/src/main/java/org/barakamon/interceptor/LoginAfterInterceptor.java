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
		log.info("�̰� �ǰڳ�");
		if (request.getMethod().equals("GET")) {// get method�� �Ķ���� ���� "GET"�̶�� return
			return;
		}

		Map<String, Object> map = modelAndView.getModel();
		MemberDTO mdto = (MemberDTO) map.get("memberDTO");
		log.info("�ȵɰž� �Ƹ�" + mdto);
		if (mdto != null) {// memberDTO�� map�� �־���� ���� ������
			// use session

			request.getSession().setAttribute("memberDTO", mdto);// ��������� �������� �����غ� �Ѱ�.(������ servlet-context.xml����)
			String useCookie = request.getParameter("useCookie");
			log.info("�����̷�" + useCookie);
			
			if (useCookie != null) {
				// use cookie
				// ��Ű������ �ѱ��� ������� ���Ѵ�. ������� ���ڵ��ؼ� �־���Ѵ�.
				log.info("��Ű ���� ��");
				
				Cookie loginCookie = new Cookie("barakamonmember", mdto.getMid());
				loginCookie.setMaxAge(24 * 60 * 60 );
				response.addCookie(loginCookie);

			}
				response.sendRedirect("/store/main");
		}
		return;
	}
}
