package co.micol.board.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.board.common.Action;
import co.micol.board.common.Paging;
import co.micol.board.dao.MemberDao;
import co.micol.board.vo.MemberVO;

public class MemberListAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 회원리스트 보기 구현
		MemberDao dao = new MemberDao();
		List<MemberVO> list = new ArrayList<MemberVO>();

		// 페이지 번호 파라미터
		String strp = request.getParameter("p");
		// 페이지 번호가 없으면 1로 초기화
		int p = 1;
		if (strp != null && ! strp.equals("")) { //파라미터가 null이 아니라면
			p = Integer.parseInt(strp);
		}
		// 레코드 건수 조회
		Paging paging = new Paging();
		paging.setPageUnit(2);	//(한페이지를 출력 할)레코드 수
		paging.setPageSize(3); 	//페이지 번호 수
		paging.setPage(p);
		MemberDao cntdao = new MemberDao(); // MemberDao 하나 더 생성
		MemberVO vo = new MemberVO();
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());
		paging.setTotalRecord(cntdao.count(vo));
		// 페이징 객체를 저장
		request.setAttribute("paging", paging);
		// 해당 페이지의 리스트만 조회
		list = dao.selectAll(vo);
		request.setAttribute("members", list);

		return "jsp/member/memberList.jsp";
	}

}
