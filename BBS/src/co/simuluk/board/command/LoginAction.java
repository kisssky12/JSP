package co.simuluk.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.simuluk.board.common.Action;
import co.simuluk.board.dao.MemberDAO;
import co.simuluk.board.vo.MemberVO;

public class LoginAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그인 인증과정을 처리한다.
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession(false);

		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));

		vo = dao.select(vo); // MemberDao를 실행시킨다.

		session.setAttribute("id", vo.getId()); 		 // sesstion id 담음 
		session.setAttribute("author", vo.getAuthor());  // sesstion 권한 담기
		session.setAttribute("name", vo.getName());      // logout에 이름 나오게 하기 위해서
		
		request.setAttribute("vo", vo); // Member를 실어 보냄.
		return "jsp/main/loginResult.jsp";
	}
}
