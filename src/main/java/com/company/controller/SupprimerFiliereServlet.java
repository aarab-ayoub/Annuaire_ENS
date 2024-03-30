package com.company.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.company.dao.FiliereDAO;

/**
 * Servlet implementation class SupprimerFiliereServlet
 */
public class SupprimerFiliereServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupprimerFiliereServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int filiereId = Integer.parseInt(request.getParameter("filiereId"));
	        
	        try {
	            FiliereDAO filiereDAO = new FiliereDAO();
	            filiereDAO.supprimerFiliere(filiereId);
	            response.sendRedirect("listeFilieres.jsp");
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	        }
	}

}