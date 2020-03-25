<%--
  Created by IntelliJ IDEA.
  User: jama1
  Date: 22/03/2020
  Time: 02:22 p. m.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es-mx">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
    <link rel="stylesheet" href="./css/jamaStyle.css">


    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
    <link rel="mask-icon" href="favicon/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#ffc40d">
    <meta name="theme-color" content="#ffffff">

    <title>Login</title>
</head>

<body class="loginBG">
<div class="container mt-4 mb-4 loginBG">
    <div class="row">
        <div class="col">
            <div class="card central-card">
                <img src="./assets/bigLogo.png" alt="Gioco Logo" class="card-img-top">
                <div class="card-body">
                    <form action="Validate" method="POST">
                        <div class="form-group text-center mb-3">
                            <h3>Login</h3>
                        </div>
                        <div class="form-group toDown">
                            <label for="userInput">Usuario:</label>
                            <input type="text" name="userInput" id="userInput" class="form-control">
                        </div>
                        <div class="form-group toDown">
                            <label for="passwordInput">Contraseña:</label>
                            <input type="password" name="passwordInput" id="passwordInput" class="form-control">
                        </div>
                        <input type="submit" name="submitFormLogin" id="submitFormLogin"
                               class="btn btn-primary toDown" value="Ingresar">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
</script>
<%--<script src="js/submit.js"></script>--%>
</body>

</html>