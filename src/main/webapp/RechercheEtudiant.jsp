<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.company.dao.EtudiantDAO" %>
<%@ page import="com.company.model.Etudiant" %>
<%@ page import="java.util.List" %>

<%
    String nomEtudiant = request.getParameter("nom");
    EtudiantDAO etudiantDAO = new EtudiantDAO();
    List<Etudiant> etudiants = etudiantDAO.rechercherEtudiantParNom(nomEtudiant);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Résultat de la recherche</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
 <header>
    <nav class="bg-white shadow">
      <div class="container mx-auto px-4">
        <div class="flex justify-between items-center py-4">
          <!-- Logo -->
          <a href="accueil.jsp" class="text-lg font-semibold">
            logoo
          </a>
          <!-- Mobile Menu Toggle -->
          <button id="mobileMenuToggle" type="button" class="md:hidden text-gray-400 hover:text-gray-900 focus:outline-none focus:ring-2 focus:ring-blue-300 rounded-lg inline-flex items-center justify-center">
            <span class="sr-only">Open main menu</span>
            <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path>
            </svg>
          </button>
          <!-- Desktop Menu -->
          <div id="desktopMenu" class="hidden md:block">
            <ul class="flex space-x-8">
              <li>
                <a href="accueil.jsp" class="text-gray-900 hover:text-blue-700">Accueil</a>
              </li>
              <li class="relative">
                <a id="utilisationDropdownTrigger" href="#" class="text-gray-900 hover:text-blue-700">Utilisation</a>
                <!-- Dropdown Menu -->
				<ul id="utilisationDropdown" class="absolute hidden top-full left-0 bg-white shadow mt-2 py-2 w-48 z-10">
                  <li><a href="listeEtudiants.jsp" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Liste des étudiants</a></li>
                  <li><a href="RechercheEtudiant.html" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Recherche d'un étudiant</a></li>
                  <li><a href="listDepartement.jsp" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Liste des départements</a></li>
                  <li><a href="RechercheDepartement.html" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Recherche d'un département</a></li>
                  <li><a href="listeFilieres.jsp" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Liste des filières</a></li>
                  <li><a href="RechercheFiliere.html" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Recherche d'une filière</a></li>
                </ul>
              </li>
              <li class="relative">
                <a id="adminDropdownTrigger" href="#" class="text-gray-900 hover:text-blue-700">Administration</a>
                <!-- Dropdown Menu -->
                <ul id="adminDropdown"  class="absolute hidden top-full left-0 bg-white shadow mt-2 py-2 w-48 z-10">
                  <li><a href="insertionEtudiant.jsp" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Insertion d'un nouvel étudiant</a></li>
                  <li><a href="insertionDepartement.jsp" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Insertion d'un nouveau département</a></li>
                  <li><a href="insertionFiliere.jsp" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Insertion d'une nouvelle filière</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
  </header>
  <div class="container mx-auto px-4 py-8">
    <h1 class="text-3xl font-bold mb-4 text-black">Résultat de la recherche</h1>
    <% if (etudiants.isEmpty()) { %>
        <p class="text-red-500 text-lg mb-8">Aucun étudiant trouvé avec ce nom.</p>
    <% } else { %>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            <% for (Etudiant etudiant : etudiants) { %>
                <div class="bg-white rounded-lg shadow-lg p-6 transition-transform duration-300 transform hover:-translate-y-2">
                    <h2 class="text-2xl font-semibold text-gray-800 mb-2"><%= etudiant.getNom() %> <%= etudiant.getPrenom() %></h2>
                    <p class="text-lg text-gray-600 mb-2">CNE : <%= etudiant.getCne() %></p>
                    <p class="text-lg text-gray-600 mb-2">Filière : <%= etudiant.getFiliere() %></p>
                    <p class="text-lg text-gray-600 mb-2">Département : <%= etudiant.getDepartement() %></p>
                    <p class="text-lg text-gray-600 mb-2">Téléphone : <%= etudiant.getTelephone() %></p>
                </div>
            <% } %>
        </div>
    <% } %>
</div>
</body>
<script>
  // Toggle mobile menu
  document.getElementById('mobileMenuToggle').addEventListener('click', function() {
    document.getElementById('desktopMenu').classList.toggle('hidden');
  });

  // Toggle dropdown menus
  document.getElementById('utilisationDropdownTrigger').addEventListener('click', function() {
  	document.getElementById('adminDropdown').classList.add('hidden');
  	document.getElementById('utilisationDropdown').classList.toggle('hidden');
  });

  document.getElementById('adminDropdownTrigger').addEventListener('click', function() {
    document.getElementById('utilisationDropdown').classList.add('hidden');
    document.getElementById('adminDropdown').classList.toggle('hidden');
  });
</script>
</html>