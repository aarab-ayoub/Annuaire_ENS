package com.company.dao;

import com.company.util.DBUtil;
import com.company.model.Filiere;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FiliereDAO {

    public List<Filiere> getAllFilieres() throws SQLException {
        List<Filiere> filieres = new ArrayList<>();
        String sql = "SELECT * FROM filiere";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Filiere filiere = new Filiere();
                filiere.setId(rs.getInt("id_filiere"));
                filiere.setNom(rs.getString("nom_filiere"));
                filiere.setIdDepartement(rs.getInt("id_departement"));
                filieres.add(filiere);
            }
        }

        return filieres;
    }
    public List<Filiere> getFilieresByDepartment(int departmentId) throws SQLException {
        List<Filiere> filieres = new ArrayList<>();
        String sql = "SELECT * FROM filiere WHERE id_departement = ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, departmentId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Filiere filiere = new Filiere();
                filiere.setId(rs.getInt("id_filiere"));
                filiere.setNom(rs.getString("nom_filiere"));
                filiere.setIdDepartement(rs.getInt("id_departement"));
                filieres.add(filiere);
            }
        }

        return filieres;
    }

    public void insertFiliere(Filiere filiere) throws SQLException {
        String sql = "INSERT INTO filiere (nom_filiere, id_departement) VALUES (?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, filiere.getNom());
            stmt.setInt(2, filiere.getIdDepartement());
            stmt.executeUpdate();
        }
    }

    public void supprimerFiliere(int filiereId) throws SQLException {
        String sql = "DELETE FROM filiere WHERE id_filiere = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, filiereId);
            stmt.executeUpdate();
        }
    }
    public List<Filiere> getFiliereByName(String nom) throws SQLException {
        List<Filiere> filieres = new ArrayList<>();
        String sql = "SELECT f.*, d.nom_departement FROM filiere f INNER JOIN departement d ON f.id_departement = d.id_departement WHERE f.nom_filiere LIKE ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, "%" + nom + "%");
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Filiere filiere = new Filiere();
                    filiere.setId(rs.getInt("id_filiere"));
                    filiere.setNom(rs.getString("nom_filiere"));
                    filiere.setIdDepartement(rs.getInt("id_departement"));
                    filiere.setNomDepartement(rs.getString("nom_departement"));
                    filieres.add(filiere);
                }
            }
        }

        return filieres;
    }

}