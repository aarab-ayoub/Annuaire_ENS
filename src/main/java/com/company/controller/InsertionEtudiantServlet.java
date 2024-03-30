package com.company.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.company.dao.EtudiantDAO;
import com.company.model.Etudiant;

/**
 * Servlet implementation class InsertionEtudiantServlet
 */
public class InsertionEtudiantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertionEtudiantServlet() {
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
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		 
		 	int cne = Integer.parseInt(request.getParameter("cne"));
	        String nom = request.getParameter("nom");
	        String prenom = request.getParameter("prenom");
	        String filiere = request.getParameter("filiere");
	        String departement = request.getParameter("departement");
	        String telephone = request.getParameter("telephone");

	        Etudiant etudiant = new Etudiant();
	        etudiant.setCne(cne);
	        etudiant.setNom(nom);
	        etudiant.setPrenom(prenom);
	        etudiant.setFiliere(filiere);
	        etudiant.setDepartement(departement);
	        etudiant.setTelephone(telephone);

	        EtudiantDAO etudiantDAO = new EtudiantDAO();
	        try {
	            etudiantDAO.insertEtudiant(etudiant);
	            response.sendRedirect("listeEtudiants.jsp");
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
    }


}