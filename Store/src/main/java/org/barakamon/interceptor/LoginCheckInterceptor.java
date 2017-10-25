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
public class LoginCheckInterceptor extends HandlerInterceptorAdapter {// �������̽��� ������ �߻� Ŭ������ ����Ǿ�����.�Ϲ������� ������ ���Ͽ��� ����Ͱ�
																		// ������ Ư�� �������̽� ���� ���.

	@Inject
	private MemberMapper mmapper;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// ������ handler�� ���� �����Ϸ��� �޼ҵ� ��ü�� �ǹ�. �̸� Ȱ���ϸ� ���� ����Ǵ� ��Ʈ�ѷ��� �ľ��ϰų� �߰����� �޼ҵ带 �����ϴ�
		// ���� �۾�����.
		log.info("-----pre Handle--------------------");

		// Session mid check
		HttpSession session = request.getSession();
		// String mid = (String) session.getAttribute("mid");
		MemberDTO member = (MemberDTO) session.getAttribute("memberDTO");
		log.info("����´�" + member);

		// Login False
		if (member != null) {

			return true;
		}
		Cookie loginCookie = WebUtils.getCookie(request, "barakamonmember");

		if (loginCookie != null) { // ����� �� : ���� ��Ű �Ѵ� �ִ� ���/ ���Ǹ� �ִ� ���/ ��Ű�� �ִ°��
			log.info("���� ��Ų��..."+ loginCookie.getValue());
			member = mmapper.findByCookie(loginCookie.getValue());
			request.getSession().setAttribute("memberDTO", member);
			// ���� �α�����Ű�� �ְ� �α��� ���ǰ��� ���ٸ� ���ȸ����� ���ؼ� �α��� �õ� �������� �̵����Ѷ�.
			return true;
		}

		log.info("interceptor: Session check true");
		response.sendRedirect("/login");
		return false;
		// return super.preHandle(request, response, handler);
	}

}
