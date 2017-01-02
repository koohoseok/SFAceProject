package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("SFAce/html; charset=utf-8");
		
		String userId=request.getParameter("userid");
		String userPwd=request.getParameter("userpwd");
		
		Member loginUser = new MemberService().loginCheck(userId, userPwd);
		
		if(loginUser != null){
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			//session.setMaxInactiveInterval(60*30);	// 아무 입력 없을시 자동으로 로그아웃 되는 시간(초단위)
			response.sendRedirect("/semi/view/RoyalG/loginSuccess.jsp");
		}
		else{
			response.sendRedirect("/semi/view/RoyalG/loginFail.html");
		}
	}

}
