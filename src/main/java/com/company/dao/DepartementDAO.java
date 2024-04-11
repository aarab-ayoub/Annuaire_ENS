package com.company.dao;

import com.company.util.DBUtil;
import com.company.model.Departement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DepartementDAO {

    public List<Departement> getAllDepartements() throws SQLException {
        List<Departement> departements = new ArrayList<>();
        String sql = "SELECT * FROM departement";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Departement departement = new Departement();
                departement.setIdDepartement(rs.getInt("id_departement"));
                departement.setNomDepartement(rs.getString("nom_departement"));
                departements.add(departement);
            }
        }

        return departements;
    }

    public void insertDepartement(Departement departement) throws SQLException {
        String sql = "INSERT INTO departement (nom_departement) VALUES (?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, departement.getNomDepartement());
            stmt.executeUpdate();
        }
    }
    
    public List<Departement> rechercherDepartement(String nomDepartement) throws SQLException {
        List<Departement> departements = new ArrayList<>();
        String sql = "SELECT * FROM departement WHERE nom_departement LIKE ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, "%" + nomDepartement + "%");
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Departement departement = new Departement();
                departement.setIdDepartement(rs.getInt("id_departement"));
                departement.setNomDepartement(rs.getString("nom_departement"));
                departements.add(departement);
            }
        }

        return departements;
    }
    
    public void deleteDepartement(int idDepartement) throws SQLException {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DBUtil.getConnection();
            String sql = "DELETE FROM departement WHERE id_departement = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, idDepartement);
            stmt.executeUpdate();
        } finally {
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    }
    public Departement getDepartementById(int idDepartement) throws SQLException {
        Departement departement = null;
        String sql = "SELECT * FROM departement WHERE id_departement = ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, idDepartement);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                departement = new Departement();
                departement.setIdDepartement(rs.getInt("id_departement"));
                departement.setNomDepartement(rs.getString("nom_departement"));
            }
        }

        return departement;
    }
    
    public boolean hasAssociatedFilieres(int idDepartement) throws SQLException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        boolean hasFilieres = false;

        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT COUNT(*) FROM filiere WHERE id_departement = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, idDepartement);
            rs = stmt.executeQuery();
            if (rs.next()) {
                int count = rs.getInt(1);
                if (count > 0) {
                    hasFilieres = true;
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        
        return hasFilieres;
    }
}
