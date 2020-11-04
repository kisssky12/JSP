package co.micol.board.command;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import co.micol.board.common.Action;
import co.micol.board.common.FileRenamePolicy;
import co.micol.board.common.FileUtil;
import co.micol.board.dao.MemberDao;
import co.micol.board.vo.MemberVO;

public class MemberInsertAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 회원정보를 DB에 입력한다.
		MemberDao dao = new MemberDao();
		MemberVO vo = new MemberVO();

		vo.setId(request.getParameter("id"));
		vo.setName(request.getParameter("name"));
		vo.setPassword(request.getParameter("password"));
		vo.setAddress(request.getParameter("address"));
		vo.setTel(request.getParameter("tel"));
		vo.setEnterdate(Date.valueOf(request.getParameter("enterdate")));

		String appPath = request.getServletContext().getRealPath("/images");

	
			try {
				for (Part part : request.getParts()) {
					String fileName = FileUtil.extractFileName(part);
					if (!fileName.equals("")) {
						// 파일명 중복체크
						String uploadFile = appPath + File.separator + fileName;
						File renameFile = FileRenamePolicy.rename(new File(uploadFile));
						try {
							part.write(renameFile.getAbsolutePath());
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} // 절대경로 파일명 다받아오기

						vo.setImg(renameFile.getName());
					}
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		int n = dao.insert(vo);
		String page; // 돌려줄 페이지 변수
		if (n != 0) {
			page = "jsp/member/insertSucess.jsp";
		} else {
			page = "jsp/member/insertFail.jsp";
		}

		return page;
	}

}
