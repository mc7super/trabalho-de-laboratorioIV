<html lang="pt-br">
 <head>
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <title>
   Nossas Receitas
  </title>
  <script src="https://cdn.tailwindcss.com">
  </script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css2?family=Fredoka+One&amp;display=swap" rel="stylesheet"/>
  <style>
   body {
            font-family: 'Fredoka One', cursive;
        }
  </style>
 </head>
 <body class="bg-yellow-400 flex flex-col items-center justify-center min-h-screen">
  <header class="w-full bg-yellow-400 text-center py-4">
   <h1 class="text-4xl text-red-700">
    Nossas Receitas
   </h1>
  </header>
  <main class="relative w-full flex-grow flex items-center justify-center">
   <img alt="A variety of delicious dishes and ingredients displayed on a table" class="absolute inset-0 w-full h-full object-cover z-0" height="100vh" src="./img/grand-beirut-hero-1920x1080.jpg" width="100%"/>
   <div class="relative bg-gray-200 p-8 rounded-lg shadow-lg z-10 w-11/12 max-w-md">
    <h2 class="text-2xl mb-4 text-center">
     Cadastro
    </h2>
    <form class="space-y-4">
     <div>
      <label class="block text-sm" for="email">
       e-mail
      </label>
      <input class="w-full p-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-yellow-400" id="email" type="email"/>
     </div>
     <div>
      <label class="block text-sm" for="password">
       senha
      </label>
      <input class="w-full p-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-yellow-400" id="password" type="password"/>
     </div>
     <div>
      <label class="block text-sm" for="confirm-password">
       confirma senha
      </label>
      <input class="w-full p-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-yellow-400" id="confirm-password" type="password"/>
     </div>
     <div class="flex items-center">
      <input class="mr-2" id="admin" type="checkbox"/>
      <label class="text-sm" for="admin">
       Administrador
      </label>
     </div>
     <div>
      <label class="block text-sm" for="role">
       Cargo
      </label>
     </div>
     <div class="flex justify-end">
      <button class="bg-white p-2 rounded-full shadow-lg" type="submit">
       <i class="fas fa-arrow-right text-gray-700">
       </i>
      </button>
     </div>
    </form>
   </div>
  </main>
 </body>
</html>
