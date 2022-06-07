<?php

  session_start();

  if (isset($_SESSION['user_id'])) {
    header('Location: /php-login');
  }
  require 'database.php';

  if (!empty($_POST['email']) && !empty($_POST['password'])) {
    $records = $conn -> prepare('SELECT id, email, password FROM users WHERE email = :email');
    $records->bindParam(':email', $_POST['email']);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);

    $message = '';

    if (count($results) > 0 && password_verify($_POST['password'], $results['password'])) {
      $_SESSION['user_id'] = $results['id'];
      header("Location: /php-login");
    } else {
      $message = 'Sorry, those credentials do not match';
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

    
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
    <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#712cf9">



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

      #viewPassword{
        cursor:pointer;
        border: none;
        height: 39px;
        background-color: #004d7a;
        color: #FFF;
        width: 150px;
        margin-top: 16px
      }

      #password {
        height: 25px;
        width: 250px;
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
  </head>
  <body class="text-center">

<?php if(!empty($message)): ?>
      <p> <?= $message ?></p>
    <?php endif; ?>
   
    <form action="login.php" method="POST">
    <div class="container centrado">
      <div class="row"> 
        <div class="col-md-12 art">

          <main class="form-signin w-100 m-auto">
            <form>
              <h1 class="h3 mb-3 fw-normal">Iniciar sesion</h1>

              <div class="centrado">
                <div class="form-floating">
                 <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                 <label for="floatingInput">Email</label>
               </div>
             </div>

             <br>

            <div class="centrado">
              <div class="row">
                <div class="col-md-9">
                  <div class="form-floating">
                    <input type="password" class="form-control" id="password1" placeholder="Contraseña"></input>
                    <label for="password1">Contraseña</label> 
                  </div>  
                  <br>
                  <div class="col md-1">
                  <button class="button" type="button" onclick="cambiarpasswd()">👁</button>
                  </div>
                </div>
              </div>
            </div>

          <br>

          <div class="checkbox mb-3">
            <label>
              <input type="checkbox" value="remember-me"> Recordarme
            </label>
          </div>
          <div class="centrado">
            <button class="button" type="submit" value="submit">Iniciar sesion</button>
            <br>
            <br>
            <h1 class="h5 mb-1 fw-normal">Si no tiene un usuario presione <a href="registro.html">aqui</a></h1>
          </div>
        </form>
      </main>
    </div>
  </div>
</div>

<script type="text/javascript">
  let password = document.getElementById('password1'); 
  function cambiarpasswd(){
    if(password.type == "password"){
      password.type = 'text'
    }else{
      password.type = "password"
    }
  }
</script> 
</form>
</body>
</html>
