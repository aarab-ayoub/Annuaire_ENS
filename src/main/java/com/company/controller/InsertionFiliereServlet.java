package com.company.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.company.dao.FiliereDAO;
import com.company.model.Filiere;

/**
 * Servlet implementation class InsertionFiliereServlet
 */
public class InsertionFiliereServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertionFiliereServlet() {
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
		String nomFiliere = request.getParameter("nomFiliere");
        int idDepartement = Integer.parseInt(request.getParameter("idDepartement"));

        Filiere filiere = new Filiere();
        filiere.setNom(nomFiliere);
        filiere.setIdDepartement(idDepartement);

        FiliereDAO filiereDAO = new FiliereDAO();
        try {
            filiereDAO.insertFiliere(filiere);
            response.sendRedirect("listeFilieres.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}

}
