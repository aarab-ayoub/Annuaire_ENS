package com.company.dao;

import com.company.util.DBUtil;
import com.company.model.Etudiant;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EtudiantDAO {

    public List<Etudiant> getAllEtudiants() throws SQLException {
        List<Etudiant> etudiants = new ArrayList<>();
        String sql = "SELECT * FROM etudiant";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Etudiant etudiant = new Etudiant();
                etudiant.setCne(rs.getInt("cne"));
                etudiant.setNom(rs.getString("nom"));
                etudiant.setPrenom(rs.getString("prenom"));
                etudiant.setFiliere(rs.getString("filiere"));
                etudiant.setDepartement(rs.getString("departement"));
                etudiant.setTelephone(rs.getString("telephone"));
                etudiants.add(etudiant);
            }
        }

        return etudiants;
    }

	public void insertEtudiant(Etudiant etudiant) throws SQLException  {
		String sql = "INSERT INTO etudiant (cne, nom, prenom, filiere, departement, telephone) VALUES (?, ?, ?, ?, ?, ?)";
	    try (Connection conn = DBUtil.getConnection();
	         PreparedStatement stmt = conn.prepareStatement(sql)) {
	        stmt.setInt(1, etudiant.getCne());
	        stmt.setString(2, etudiant.getNom());
	        stmt.setString(3, etudiant.getPrenom());
	        stmt.setString(4, etudiant.getFiliere());
	        stmt.setString(5, etudiant.getDepartement());
	        stmt.setString(6, etudiant.getTelephone());
	        stmt.executeUpdate();
	    }
	}

    public void deleteEtudiant(int cne) throws SQLException {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DBUtil.getConnection();
            String sql = "DELETE FROM etudiant WHERE cne = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, cne);
            stmt.executeUpdate();
        } finally {
            // Fermer les ressources
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    }


}
