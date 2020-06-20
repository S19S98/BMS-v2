package com.swapnil.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swapnil.bean.BookBean;
import com.swapnil.dao.Add_ReadingDAO;

/**
 * Servlet implementation class Add_Reading_Servlet
 */
@WebServlet("/Add_Reading_Servlet")
public class Add_Reading_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_Reading_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bname = request.getParameter("bname");
		String aname = request.getParameter("aname");
		String pub = request.getParameter("pub");
		BookBean bean = new BookBean();
		bean.setBookName(bname);
		bean.setAuthorName(aname);
		bean.setPublication(pub);
		
		Add_ReadingDAO dao = new Add_ReadingDAO();
		String status = dao.addValue(bean);
		if(status.equals("Success"))
			response.sendRedirect("R_Add_Success.html");
		else
			response.sendRedirect("R_Add_Fail.html");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
