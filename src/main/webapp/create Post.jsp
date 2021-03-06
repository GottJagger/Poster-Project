<%@page import="java.time.LocalDate"%>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="miSass/estilos.css">

        <title>Create Post</title>
    </head>

    <body id="page-top">
        <%
            if (session.getAttribute("nombreUsuario") != null) {
                System.out.println("ususario:" + session.getAttribute("nombreUsuario"));
                
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
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded"
                                                             href="ListarPost.jsp">My
                                Poster's</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded"
                                                             href="Registro.jsp">Sign in</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded"
                                                             href="Ingreso.jsp">Log in</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <br>

        <section class=" py-5 container-fluid container " id="testimonial">
            <div class="container-fluid shadow-sm">
                <div class="row">
                    <div class="col-md-4 py-5 bg-danger text-white text-center ">
                        <div class=" ">
                            <div class="card-body bg-info">
                                <img src="img/create.png" style="width:30%">
                                <h2 class="py-3">Crear</h2>
                                <p>
                                    Aqui podras crear tu post que sera publicado en tu poster personal, con cuidado con
                                    alguna informacion personal.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 py-5 border">
                        <h4 class="pb-4">LLena los campos para poder Realizar un Post</h4>
                        <form action="miJSP/registroPost.jsp" method="POST">

                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Titulo o tema</label>
                                <input type="text" class="form-control" id="exampleInputName" required name="tema">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Titulo o tema</label>
                                <input type="text" class="form-control" id="exampleInputName" required name="fechaCreacion"value="<%=LocalDate.now()%>" readonly>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Contenido</label>
                                <textarea required type="text" class="form-control" id="exampleInputPassword1"
                                          name="conetidoPost" aria-label="With textarea" maxlength="600"></textarea>
                                <div id="emailHelp" class="form-text">El texto esta limitado, revisa lo que vayas a escribir</div>
                            </div>

                            <button type="submit" class="btn btn-danger text-white btn-lg text-uppercase">Crear
                                Post</button>
                    </div>
                </div>
            </div>
        </section>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-uppercase fixed-bottom" id="mainNav">
            <div class="container container-fluid collapse">
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="nav navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded" href="create Post.jsp">
                                Create Post
                            </a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded" href="delete post.jsp">
                                Delete
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>

</html>