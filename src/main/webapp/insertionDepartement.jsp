<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insertion d'un nouveau département</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script>
        function validateForm() {
            var nom = document.getElementById("nomDepartement").value;
            
            if (nom === "") {
                alert("le champ est obligatoire");
                return false;
            }
            return true;
        }
    </script>
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
                <ul id="utilisationDropdown" class="absolute hidden top-full left-0 bg-white shadow mt-2 py-2 w-48">
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
                <ul id="adminDropdown" class="absolute hidden top-full left-0 bg-white shadow mt-2 py-2 w-48">
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

<div class="container mx-auto py-8 px-4 md:px-0">
    <h1 class="text-3xl text-center mb-8">Insertion d'un nouveau département</h1>
    <form action="InsertionDepartementServlet" method="post" class="mx-auto max-w-md" onsubmit="return validateForm()">
        <div class="mb-4">
            <label for="nomDepartement" class="block text-gray-700 font-bold mb-2">Nom du département</label>
            <input type="text" id="nomDepartement" name="nomDepartement" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
        </div>
        <div class="flex justify-center">
            <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">Ajouter</button>
        </div>
    </form>
</div>

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
</body>
</html>