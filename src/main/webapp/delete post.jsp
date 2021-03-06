<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="miSass/estilos.css">

    <title>Delete Post</title>
</head>

<body id="page-top">

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

    <section class=" py-5 container-fluid container " id="testimonial">
        <div class="container-fluid shadow-sm">
            <div class="row">
                <div class="col-md-4 py-5 bg-dark text-white text-center ">
                    <div class=" ">
                        <div class="card-body bg-info">
                            <img src="img/archive.png" style="width:30%">
                            <h2 class="py-3">Eliminar</h2>
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
                    <form action="miJSP/eliminarPost.jsp" method="POST">

                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Nombre de Usuario</label>
                            <input type="email" class="form-control" id="exampleInputName" name="nombreUsuario">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">contrase??a</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="password">
                            <div id="emailHelp" class="form-text">No comparta tu contrase??a con nadie.</div>
                        </div>

                        <button type="submit"
                            class="btn btn-dark text-white btn-lg text-uppercase">Registrar</button>
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