<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Accueil - Mini Annuaire de l'ENS</title>
  <!-- Link to Tailwind CSS -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <!-- Custom styles -->
  <style>
    /* Add your custom styles here */
    /* Hero section styles */
    .hero {
      background-image: url('https://enstetouan.ma/wp-content/uploads/2021/07/Porte-principale-ENS-scaled.jpg');
      background-size: cover;
      background-position: center;
      height: 600px;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
    }

    .hero-content {
      color: #fff;
    }

    /* Feature section styles */
    .feature-card {
      background-color: #f7fafc;
      border-radius: 10px;
      padding: 30px;
      transition: transform 0.3s ease-in-out;
    }

    .feature-card:hover {
      transform: translateY(-5px);
    }
  </style>
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
                  <li><a href="listeEtudiants.jsp" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Liste des �tudiants</a></li>
                  <li><a href="RechercheEtudiant.html" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Recherche d'un �tudiant</a></li>
                  <li><a href="listDepartement.jsp" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Liste des d�partements</a></li>
                  <li><a href="RechercheDepartement.html" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Recherche d'un d�partement</a></li>
                  <li><a href="listeFilieres.jsp" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Liste des fili�res</a></li>
                  <li><a href="RechercheFiliere.html" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Recherche d'une fili�re</a></li>
                </ul>
              </li>
              <li class="relative">
                <a id="adminDropdownTrigger" href="#" class="text-gray-900 hover:text-blue-700">Administration</a>
                <!-- Dropdown Menu -->
                <ul id="adminDropdown" class="absolute hidden top-full left-0 bg-white shadow mt-2 py-2 w-48">
                  <li><a href="insertionEtudiant.jsp" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Insertion d'un nouvel �tudiant</a></li>
                  <li><a href="insertionDepartement.jsp" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Insertion d'un nouveau d�partement</a></li>
                  <li><a href="insertionFiliere.jsp" class="text-gray-700 hover:text-blue-700 px-4 py-2 block">Insertion d'une nouvelle fili�re</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
  </header>

  <main>
    <!-- Hero section -->
    <section class="hero">
      <div class="container mx-auto">
        <div class="hero-content">
          <h1 class="text-5xl font-bold mb-4">Bienvenue � l'ENS Mini Annuaire</h1>
          <p class="text-lg text-gray-200">Trouvez facilement des informations sur les �tudiants, les d�partements et les fili�res.</p>
        </div>
      </div>
    </section>

    <!-- Features section -->
    <section class="container mx-auto my-16">
      <h2 class="text-3xl font-semibold mb-8 text-center">Fonctionnalit�s principales</h2>
      <div class="grid grid-cols-1 md:grid-cols-3 gap-12">
        <!-- Feature card 1 -->
        <div class="feature-card p-6 shadow-lg">
          <h3 class="text-xl font-semibold mb-4">Liste des �tudiants</h3>
          <p class="text-gray-700">Acc�dez � une liste compl�te de tous les �tudiants.</p>
        </div>

        <!-- Feature card 2 -->
        <div class="feature-card p-6 shadow-lg">
          <h3 class="text-xl font-semibold mb-4">Recherche d'un �tudiant</h3>
          <p class="text-gray-700">Trouvez un �tudiant en saisissant son nom.</p>
        </div>

        <!-- Feature card 3 -->
        <div class="feature-card p-6 shadow-lg">
          <h3 class="text-xl font-semibold mb-4">Liste des d�partements</h3>
          <p class="text-gray-700">Consultez la liste de tous les d�partements.</p>
        </div>

        <!-- Feature card 4 -->
        <div class="feature-card p-6 shadow-lg">
          <h3 class="text-xl font-semibold mb-4">Recherche d'un d�partement</h3>
          <p class="text-gray-700">Recherchez un d�partement par son nom.</p>
        </div>

        <!-- Feature card 5 -->
        <div class="feature-card p-6 shadow-lg">
          <h3 class="text-xl font-semibold mb-4">Liste des fili�res</h3>
          <p class="text-gray-700">D�couvrez toutes les fili�res disponibles.</p>
        </div>

        <!-- Feature card 6 -->
        <div class="feature-card p-6 shadow-lg">
          <h3 class="text-xl font-semibold mb-4">Recherche d'une fili�re</h3>
          <p class="text-gray-700">Recherchez une fili�re par son nom.</p>
        </div>
      </div>
    </section>

    <!-- Contact Section -->
    <section class="bg-gray-100 py-20">
      <div class="container mx-auto px-4">
        <div class="flex flex-col md:flex-row justify-between items-center">
          <div class="w-full md:w-1/2">
            <h2 class="text-3xl font-semibold mb-6">Contactez-nous</h2>
            <p class="text-gray-700 mb-6">Vous avez des questions ou des commentaires ? N'h�sitez pas � nous contacter. Nous sommes l� pour vous aider !</p>
            <ul class="text-gray-700">
              <li class="mb-2">
                <svg class="w-5 h-5 inline-block mr-2 text-blue-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15.09V15c0-.55-.45-1-1-1H8c-.55 0-1 .45-1 1v2.09c0 .53.45.97 1 .97h4c.55 0 1-.44 1-.97zM12 12c-.83 0-1.5-.67-1.5-1.5S11.17 9 12 9s1.5.67 1.5 1.5S12.83 12 12 12zm5.25 3c-.17-1.81-1.43-3.22-3-3.5 1.57-.28 2.83-1.69 3-3.5h2c-.17 2.9-2.31 5.22-5 5.72V17c0 .55.45 1 1 1h4c.55 0 1-.45 1-1v-2h-.75z"></path></svg>
                ayoubaarab570@gmail.com
              </li>
              <li class="mb-2">
                <svg class="w-5 h-5 inline-block mr-2 text-blue-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-1.29 15.5c-2.64 0-5.18-1.04-7.07-2.93l14.14-14.14c1.89 1.89 2.93 4.43 2.93 7.07 0 6.28-10 16.36-10 16.36s-10-10.08-10-16.36c0-2.64 1.04-5.18 2.93-7.07l14.14 14.14c-1.89 1.89-4.43 2.93-7.07 2.93z"></path></svg>
                Siège : Avenue Moulay Hassan, BP : 209 Martil, Martil 93150
              </li>
              <li class="mb-2">
                <svg class="w-5 h-5 inline-block mr-2 text-blue-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm-.71-5.59l-.58.57c-1.38 1.39-3.6 1.39-4.98 0l-.58-.57-.7.72L8.11 16h7.76l-1.41-1.41-.7-.72zm.71-3.59l1.4-1.41H7.58l1.41 1.41.7.71-.7.7-1.41 1.42h7.77l-1.42-1.42-.7-.7.7-.71z"></path></svg>
                +212 706 858 430
              </li>
            </ul>
          </div>
          <div class="w-full md:w-1/2">
            <!-- Contact Form -->
            <form action="#" method="post" class="bg-white p-8 shadow-lg">
              <h2 class="text-2xl font-semibold mb-6">Envoyez-nous un message</h2>
              <div class="mb-4">
                <label for="name" class="block text-sm font-medium text-gray-700">Nom</label>
                <input type="text" id="name" name="name" class="mt-1 focus:ring-blue-500 focus:border-blue-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" required>
              </div>
              <div class="mb-4">
                <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
                <input type="email" id="email" name="email" class="mt-1 focus:ring-blue-500 focus:border-blue-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" required>
              </div>
              <div class="mb-4">
                <label for="message" class="block text-sm font-medium text-gray-700">Message</label>
                <textarea id="message" name="message" rows="4" class="mt-1 focus:ring-blue-500 focus:border-blue-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" required></textarea>
              </div>
              <button type="submit" class="inline-block bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded-md">Envoyer</button>
            </form>
          </div>
        </div>
      </div>
    </section>
                
  </main>

  <!-- Tailwind CSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>
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
