package co.simuluk.board.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.simuluk.board.command.LoginAction;
import co.simuluk.board.command.LoginForm;
import co.simuluk.board.command.LogoutAction;
import co.simuluk.board.command.MainAction;
import co.simuluk.board.command.MemberFrom;
import co.simuluk.board.command.MemberInsertAction;
import co.simuluk.board.command.MemberListAction;
import co.simuluk.board.common.Action;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Action> map = new HashMap<String, Action>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		// 요청들을 정의함.
		map.put("/main.do", new MainAction());     		   	   // 처음 브라우저에 들어오는 페이지 처리 index.jsp
		map.put("/login.do", new LoginAction());   		   	   // 로그인 메뉴를 처리하는 것
		map.put("/loginForm.do", new LoginForm()); 		   	   // 로그인Form 호출
		map.put("/memberList.do", new MemberListAction()); 	   // 회원전체 리스트보기
		map.put("/memberForm.do", new MemberFrom());	   	   // 회원가입 화면 호출
		map.put("/memberInsert.do", new MemberInsertAction()); // 회원입력
		map.put("/logout.do", new LogoutAction());			   // 로그아웃 호출	
//		map.put("/#.do", new LoginForm());
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실제 수행할 명령을 정리.
		request.setCharacterEncoding("utf-8"); // 한글깨짐 방지를 위해
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String path = uri.substring(contextPath.length()); // 실제 들어오는 요청페이지를 찾음

		Action command = map.get(path);
		String viewPage = command.exec(request, response); // 실제 명령이 수행되고 나서 보여줄 페이지 선택

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); // 선택한 페이지로 가기
		dispatcher.forward(request, response); 
	}

}
