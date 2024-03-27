package com.company.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.company.dao.DepartementDAO;

/**
 * Servlet implementation class SuppressionDepartementServlet
 */
public class SuppressionDepartementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuppressionDepartementServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int idDepartement = Integer.parseInt(request.getParameter("id_departement"));
	        DepartementDAO departementDAO = new DepartementDAO();
	        try {
	            departementDAO.deleteDepartement(idDepartement);
	            response.sendRedirect("listDepartement.jsp");
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}

}
