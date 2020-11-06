package jstl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JstlTestServ")
public class JstlTestServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Map
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("name", "홍길동");
		map.put("hobby", new String[] { "게임", "독서" });
		map.put("job", "개발,디자인,퍼블리셔,기획");
		request.setAttribute("map", map);

		// Vo
		request.setAttribute("member", new MemberVO("park","박길동"));
		request.getSession().setAttribute("member", new MemberVO("hong", "홍길동"));
		
		// List
		ArrayList<MemberVO> list = new ArrayList<>();
		list.add(new MemberVO("kim","김기자"));
		list.add(new MemberVO("lee","이기자"));
		list.add(new MemberVO("choi","최기자"));
		request.setAttribute("memberlist", list);
		
		// 쿠키저장
		Cookie cookie = new Cookie("popupYn", "y");
		cookie.setMaxAge(60*60*2);
		cookie.setPath("/"); //path를 걸어주면 그곳에서만 읽을 수 있음
		response.addCookie(cookie); //쿠키가 저장되는 위치는 브라우저 (그래서 response)
		
		request.setAttribute("goods", new Integer[]{100,200,300});
		request.getRequestDispatcher("/jstlTestView.jsp").forward(request, response);
	}

}
