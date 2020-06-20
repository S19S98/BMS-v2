package com.swapnil.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swapnil.bean.BookBean;
import com.swapnil.dao.Del_ReadingDAO;

/**
 * Servlet implementation class Delete_Reading_Servlet
 */
@WebServlet("/Delete_Reading_Servlet")
public class Delete_Reading_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete_Reading_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bname = request.getParameter("bname");
		BookBean bean = new BookBean();
		bean.setBookName(bname);
		
		Del_ReadingDAO dao = new Del_ReadingDAO();
		String status = dao.delValue(bean);
		if(status.contentEquals("Success"))
			response.sendRedirect("R_Del_Success.html");
		else
			response.sendRedirect("R_Del_Fail.html");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
