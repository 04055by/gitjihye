package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BoardDAO;
import DTO.BoardDTO;


@WebServlet("/ajaxSearch")
public class AjaxBoardSearchController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       

    public AjaxBoardSearchController() {
        super();      
    }
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         doPost(request, response);
   }
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      response.setContentType("text/html;charset=utf-8");      
      String writer = request.getParameter("writer");   
//		response.getWriter().write(//view로 전달할 내용을 기재)
      response.getWriter().write(getJSON(writer) );//view로 전달할 내용)
      
   }

//								^
//								|
//								|   
public String getJSON(String writer) {
      //String reult="";
      StringBuffer result = new StringBuffer("");
      
      //유효성 체크 - writer의 값이 null인지 아닌지 체크
      if(writer == null) {
         writer="";
      }

/*	key: 작성자 	제목 	  내용 	  등록일
	value : 김자바 테슽스1  테스트내용  3/20
	"result": "[{"key":"value"}]
	"result": "[{"value":"김자바"},{"value":"테스트1"},{"value":"테스트내용},{"value":"3/20"}] */
      
      result.append("{\"result\": [");
      
       BoardDAO boardDAO = new BoardDAO();
       ArrayList<BoardDTO> boardList = boardDAO.ajaxSearch(writer);
      
      for(int i=0; i<boardList.size(); i++) {
         result.append("[{\"key\":\""+boardList.get(i).getWriter()+"\"},");
         result.append("{\"key\":\""+boardList.get(i).getTitle()+"\"},");
         result.append("{\"key\":\""+boardList.get(i).getContent()+"\"},");
         result.append("{\"key\":\""+boardList.get(i).getRegDate()+"\"}],");	//한사람 자료니까
      }
      result.append("]}");
      return result.toString();	//return값을 받아서 view(.jsp)로 넘어가야 한다.
   }
   
}
