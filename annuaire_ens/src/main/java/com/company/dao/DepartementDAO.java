package com.company.dao;

import com.company.model.Departement;
import com.company.util.DBUtil;

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
}
