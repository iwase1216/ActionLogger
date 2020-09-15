package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProfileDAO;
import model.Comment;

/**
 * Servlet implementation class Profile
 */
@WebServlet("/Profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
	ProfileDAO DAO=new ProfileDAO();
	HttpSession session = req.getSession();
	String userid=(String) session.getAttribute("userid");

	Comment comment=DAO.load(userid);
	session.setAttribute("com", comment.getComment());
	RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/jsp/profile.jsp");
	dispatcher.forward(req, resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
		String userid=request.getParameter("userid");
		String comment=request.getParameter("comment");
		ProfileDAO DAO=new ProfileDAO();
		DAO.save(userid,comment);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ActionLogger/");
		dispatcher.forward(request, response);
		
	}

	}
