<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.company.model.Etudiant" %>
<%@ page import="com.company.dao.EtudiantDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>

<%
    EtudiantDAO etudiantDAO = new EtudiantDAO();
    List<Etudiant> etudiants = etudiantDAO.getAllEtudiants();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des étudiants</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<div class="container mx-auto py-8">
    <h1 class="text-3xl text-center mb-8">Liste des étudiants</h1>
    <a href="insertionEtudiant.jsp" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline mb-4 ">Ajouter un étudiant</a>
    <div class="overflow-x-auto mt-8">
        <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-gray-50">
            <tr>
                <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    CNE
                </th>
                <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Nom
                </th>
                <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Prénom
                </th>
                <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Filière
                </th>
                <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Département
                </th>
                <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Téléphone
                </th>
                <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Actions
                </th>
            </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-200">
            <% for (Etudiant etudiant : etudiants) { %>
            <tr>
                <td class="px-6 py-4 whitespace-nowrap">
                    <%= etudiant.getCne() %>
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                    <%= etudiant.getNom() %>
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                    <%= etudiant.getPrenom() %>
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                    <%= etudiant.getFiliere() %>
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                    <%= etudiant.getDepartement() %>
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                    <%= etudiant.getTelephone() %>
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                    <a href="SuppressionEtudiantServlet?cne=<%= etudiant.getCne() %>" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet étudiant ?')" class="text-red-600 hover:text-red-900">Supprimer</a>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
