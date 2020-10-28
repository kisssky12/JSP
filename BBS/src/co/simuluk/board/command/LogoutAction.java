package co.simuluk.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.simuluk.board.common.Action;

public class LogoutAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그아욱 과정을 처리 한다.
		HttpSession session = request.getSession();
		String name = (String)session.getAttribute("name");
		session.invalidate();
		request.setAttribute("name", name);
		
		return "jsp/main/logout.jsp"; 
	}

}
