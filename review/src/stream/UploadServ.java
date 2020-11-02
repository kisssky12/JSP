package stream;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/UploadServ")
@MultipartConfig(maxFileSize=1024*1024*2     //size of any uploaded file
            ,maxRequestSize = 1024*1024*10  //overall size of all uploaded files
            ,location="d:/img"
            ,fileSizeThreshold = 1024
)

public class UploadServ extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      //파라미터를 vo에 담고
      
      //업로드 위치를 현재 컨텍스트에
      String appPath = request.getServletContext().getRealPath("/images");
      System.out.println(appPath);
      
      //여러개는 getParts에 for문 돌리기, 한개면 getPart
      //for (Part part : request.getParts()) {
         Part part = request.getPart("file1");
         String fileName = extractFileName(part);
         if(!fileName.equals("")) {
            //파일명 중복체크
            String uploadFile = appPath + File.separator + fileName;
            File renameFile = FileRenamePolicy.rename(new File(uploadFile));                            
            part.write(renameFile.getAbsolutePath()); //절대경로 파일명 다받아오기
            
         }
      //}
   }
   
   private String extractFileName(Part part) {
      String contentDisp = part.getHeader("content-disposition");
      String[] items = contentDisp.split(";");
      for (String s : items) {
         if (s.trim().startsWith("filename")) {
            return s.substring(s.indexOf("=") + 2, s.length() - 1);
         }      
      }
      return "";
   }
}