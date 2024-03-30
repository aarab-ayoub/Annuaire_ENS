package com.company.model;

public class Filiere {
	
    private int id;
    private String nom;
    private int idDepartement;
    private String nomDepartement;

    public String getNomDepartement() {
        return nomDepartement;
    }

    public void setNomDepartement(String nomDepartement) {
        this.nomDepartement = nomDepartement;
    }
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public int getIdDepartement() {
		return idDepartement;
	}
	public void setIdDepartement(int idDepartement) {
		this.idDepartement = idDepartement;
	}
	
    
}