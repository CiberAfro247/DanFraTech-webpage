<?php

require 'database.php';

$message = '';

if (!empty($_POST['emailregister']) && !empty($_POST['password1'])) {
  $sql = "INSERT INTO users (emailregister, password1) VALUES (:emailregister, :password1)";
  $stmt = $conn->prepare($sql);
  $stmt->bindParam(':emailregister', $_POST['emailregister']);
  $password = password_hash($_POST['password1'], PASSWORD_BCRYPT);
  $stmt->bindParam(':password1', $password);

  if ($stmt->execute()) {
    $message = 'Tu cuenta ha sido creada con exito';
  } else {
    $message = 'Estamos teniendo inconvenientes creando tu cuenta';
  }
}
?>

<!doctype html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    

    <style>


      .centrado{
        margin: auto;
        width: 50%;


      }

      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .navbar-custom {
        background-color: #31ada1;
      }

      .nav-link:hover {
        background-color: #A7C7C4;
        border-radius: 5px;
      }

      .nav-link-active {
        background-color: #A7C7C4;
        border-radius: 5px;
      }


      .art {
        border-color: #31ada1;
        border-radius: 3px; /* (height/2) + border-width */
        border-style: solid;
        border-width: 1px;
        margin-top: 5px;
        color: #555555;
        padding: 15px;
      }

      .h1-custom {
        font-size: 20px;
        font-family: 'Helvetica';
      }

      .flexsearch--wrapper {
        height: auto;
        width: auto;
        max-width: 100%;
        overflow: hidden;
        background: transparent;
        margin: 0;
        position: static;
      }

      .flexsearch--form {
        overflow: hidden;
        position: relative;
      }

      .flexsearch--input-wrapper {
        padding: 0 66px 0 0; /* Right padding for submit button width */
        overflow: hidden;
      }

      .flexsearch--input {
        width: 100%;
      }

/***********************
 * Configurable Styles *
 ***********************/
      .flexsearch {
        padding: 0 25px 0 200px; /* Padding for other horizontal elements */
      }

      .flexsearch--input {
        -webkit-box-sizing: content-box;
        -moz-box-sizing: content-box;
        box-sizing: content-box;
        height: 30px;
        padding: 0 46px 0 10px;
        border-color: #555555;
        border-radius: 3px; /* (height/2) + border-width */
        border-style: solid;
        border-width: 1px;
        margin-top: 5px;
        color: #555555;
        background-color: #A7C7C4;
        font-family: 'Helvetica', sans-serif;
        font-size: 16px;
        -webkit-appearance: none;
        -moz-appearance: none;
      }

      .flexsearch--submit {
        position: absolute;
        right: 0;
        top: 0;
        display: block;
        width: 60px;
        height: 60px;
        padding: 0;
        border: none;
        margin-top: 4px; /* margin-top + border-width */
        margin-right: 5px; /* border-width */
        background: transparent;
        color: #888;
        font-family: 'Helvetica', sans-serif;
        font-size: 16px;
        line-height: 60px;
      }

      .flexsearch--input:focus {
        outline: none;
        border-color: #333;
      }

      .flexsearch--input:focus.flexsearch--submit {
        color: #333; 
      }

      .flexsearch--submit:hover {
        color: #333;
        cursor: pointer;
      }

      ::-webkit-input-placeholder {
        color: #888;  
      }

      input:-moz-placeholder {
        color: #888
      }

      .a-custom {
        font-family: 'Helvetica';
        font-size: 16px;
        color: black;
        text-decoration: none;
        padding-left: 10px;
      }

      .a-custom:hover {
        background-color: #A7C7C4;
        border-radius: 3px;
        color: black;
        padding-left: 5px;
        padding-top: 5px;
        padding-right: 5px;
        padding-bottom: 5px;
      }

      .button {
        border-color: #555555;
        border-radius: 3px;
        border-style: solid;
        border-width: 0;
        color: #000000;
        background-color: #A7C7C4;
        font-family: 'Helvetica', sans-serif;
        font-size: 16px;
        padding-left: 10px;
        padding-top: 5px;
        padding-right: 10px;
        padding-bottom: 5px;
      }

    </style>

    
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
    <div class="container centrado">
      <div class="row"> 
        <div class="col-md-12 art">

          <main class="form-signin w-100 m-auto">
            <form>
              <h1 class="h3 mb-3 fw-normal">Crear usuario</h1>

              
              <div class="centrado">
               <div class="row">
                <div class="col-md-12 art">
                  <div class="form-floating">
                    <input type="name" class="form-control" id="nombrereg" placeholder="nombre">
                    <label for="nombrereg">Nombre</label>      

                    <br>

                    <div class="form-floating">
                      <input type="name" class="form-control" id="Apellidoreg" placeholder="Apellido">
                      <label for="Apellidoreg">Apellido</label>
                    </div>
                  </div>
                </div>
              </div>

              <br>
              <div class="form-floating">
                <input type="text" class="form-control" id="numerotel" placeholder="Numero">
                <label for="numerotel">Numero de contacto</label>
              </div>


              <br>

              <div class="form-floating">
                <input type="email" class="form-control" id="emailregister" placeholder="Email">
                <label for="emailregister">Email</label>
              </div>

              <br>

              <div class="form-floating">
                <input type="password" class="form-control" id="password1" placeholder="Contraseña"></input>
                <label for="password1">Contraseña</label> 
              </div>  

              <br>

              <div class="form-floating">
                <input type="password" class="form-control" id="password1" placeholder="Contraseña"></input>
                <label for="password1">Confirmar contraseña</label> 
              </div>  
              <br>



              <div class="centrado">
                <button class="button" type="submit">Crear</button>
                <br>
                <br>
                <h1 class="h5 mb-1 fw-normal">Si ya tiene una cuenta creada presione <a href="login.html">aqui</a></h1>
              </div>
            </form>
          </main>
        </div>
      </div>
    </div>


  </body>
  </html>
