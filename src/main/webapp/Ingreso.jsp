

<%@page import="java.util.concurrent.TimeUnit"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="miSass/estilos.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
        <title>Log in</title>

    </head>

    <body>
        <%

            if (session.getAttribute("nombreUsuario") != null) {
                session.setAttribute("flag", true);
                response.sendRedirect("index.jsp");

            } else {
                session.invalidate();

            }

        %>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-uppercase " id="mainNav">
            <div class="container container-fluid collapse">
                <a class="navbar-brand" href="index.jsp">
                    <img src="img/ticket.png" alt="" width="30" height="30" class="d-inline-block align-text-top">
                    Poster's
                </a>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button"
                        data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded" href="ListarPost.jsp">
                                My Poster's
                            </a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded " href="Registro.jsp">
                                Sign in
                            </a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1 ">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded active" href="Ingreso.jsp">
                                Log in
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <section class=" py-5 container-fluid container " id="testimonial">
            <div class="container-fluid shadow-sm">
                <div class="row">
                    <div class="col-md-4 py-5 bg-secondary text-white text-center ">
                        <div class=" ">
                            <div class="card-body bg-info">
                                <img src="http://www.ansonika.com/mavia/img/registration_bg.svg" style="width:30%">
                                <h2 class="py-3">Ingresar</h2>
                                <p>
                                    El Ingreso te ayudara a subir y ver post tuyos y de otras personas, para poder usar
                                    esta aplicacion es necesario Ingresar.
                                    solo queda este paso para poder ingresar en nuestro sistema.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 py-5 border">
                        <h4 class="pb-4">Por favor, llenar los campos requeridos</h4>
                        <form action="miJSP/validarUsuario.jsp" method="POST">

                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Nombre de Usuario</label>
                                <input type="text" class="form-control" id="exampleInputName" name="nombreUsuario" required>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">contrase?a</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" name="password" required>
                                <div id="emailHelp" class="form-text">No comparta tu contrase??a con nadie.</div>
                            </div>

                            <button type="submit"
                                    class=" btn-secondary text-white btn-lg text-uppercase">Ingresar</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-uppercase fixed-bottom" id="mainNav">
            <div class="container container-fluid collapse">
                <div class="collapse navbar-collapse padd" id="navbarResponsive">
                    <ul class="me-auto navbar-nav mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link nav-link " href="#user">
                                <img src="img/user-4-512.png" alt="usuario" width="30px" height="30px">
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link nav-link " aria-current="page" href="#logout">
                                <img src="img/logout-512.png" alt="usuario" width="30px" height="30px">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>

    </body>

</html>