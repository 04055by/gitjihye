package servletexam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc")
public class CalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CalculatorServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		// 1.요청처리
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		String selectOption = request.getParameter("selectOption");
		
		int result = 0; // 계산결과 double = 0.0; | long = 0l;
		
		switch(selectOption) {
			case "+" : result = number1 + number2;
					   break;
			
			case "-" : result = number1 - number2;
					   break;
			   
			case "*" : result = number1 * number2;
					   break;
			   
			case "/" : result = number1 / number2;
			   		   break;
		} //switch끝
	
		
		// 2.응답처리
		// 2-1. 한글처리
		response.setContentType("text/html; charset=UTF-8");
		
		// 2-2. 출력스트림과 html태그를 이용해 출력하기
		PrintWriter out = response.getWriter();
					out.append("<h1> 계산 결과 </h1>")
						.append("<hr>")
						.append("<h2> 결과 : " + result + "</h2>");
					
					out.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
