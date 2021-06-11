<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Logica.Post"%>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="miSass/estilos.css">
        <link rel="stylesheet" href="node_modules/bootstrap/js/src/dropdown.js">
        <link rel="stylesheet" href="node_modules/bootstrap/js/dist/dropdown.js">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


        <title>My Poster's</title>
    </head>

    <body id="page-top">

        <%
            if (session.isNew()) {
                session.setAttribute("flag", null);
                session.setAttribute("flag1", true);
                response.sendRedirect("index.jsp");

            } else {
                session.setAttribute("flag1", null);
                System.out.println(session.getAttribute("nombreUsuario"));
                System.out.println("no es nueva la conexion");
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
                    <ul class="nav navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded active" href="ListarPost.jsp">
                                My Poster's
                            </a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded" href="Registro.jsp">
                                Sign in
                            </a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded" href="Ingreso.jsp">
                                Log in
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <br>

        <div class=" container container-fluid">

            <%
                Post post = new Post();
                String nombreUsuario = (String) session.getAttribute("nombreUsuario");

                ArrayList listaPost = (ArrayList) post.obtenerPost();
                
                Iterator iteradorPost = listaPost.iterator();

                while (iteradorPost.hasNext()) {
                    Post pst = (Post) iteradorPost.next();
                    
                    if (pst.getNombreUsuario().equals(nombreUsuario)) {

                        out.print("<div class='col'>"
                                + " <div class='media media-comment shadow border padd'>"
                                + " <div class='media-body u-shadow-v18 g-bg-secondary g-pa-30'>"
                                + " <div class='g-mb-15'> <h5 class='h5 g-color-gray-dark-v1 mb-0'>" + pst.getNombreUsuario() + "</h5>"
                                + "</div>"
                                + "<h6>" + pst.getTema() + "</h6>"
                                + "<p>" + pst.getConetidoPost()+ "</p>"
                                + "<span class='g-color-gray-dark-v4 g-font-size-12'>" + pst.getFechaCreacion() + "</span>"
                                + "</div>"
                                + "</div>"
                                + " </div>");
                        out.print("<br>");

                    }
                }

            %>
        </div>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-uppercase fixed-bottom" id="mainNav">
            <div class="container container-fluid collapse">
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="me-auto navbar-nav mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link nav-link " href="#user">
                                <img src="img/user-4-512.png" alt="usuario" width="30px" height="30px">
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link nav-link " aria-current="page" href="miJSP/logout.jsp">
                                <img src="img/logout-512.png" alt="usuario" width="30px" height="30px">
                            </a>
                        </li>
                    </ul>
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