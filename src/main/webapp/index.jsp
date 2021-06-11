<%@page import="Logica.Post"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page session="true"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="miSass/estilos.css">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>Landing Page</title>
    </head>

    <body id="page-top">

        <%
            if (session.getAttribute("flag1") != null) {
                out.print(" <script>function error() { swal({ title: 'Oops...',timer:2000,text: 'Usted no esta conectado ingrese al sistema',icon: 'warning',buttons: false}); } error();</script>");
                session.setAttribute("flag1", null);
            }
            if (session.getAttribute("flag") != null) {
                out.print(" <script>function error() { swal({ title: 'Oops...',timer:2000,text: 'Ya se enecuentra conectado',icon: 'warning',buttons: false}); } error();</script>");
                session.setAttribute("flag", null);

            }
            if (session.getAttribute("nombreUsuario") != null) {
                System.out.println("Existe una Session... usr: " + session.getAttribute("nombreUsuario"));

            } else {
                System.out.println("no se guardo la session...");
                session.invalidate();
            }

        %>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-uppercase " id="mainNav">
            <div class="container container-fluid collapse">
                <a class="navbar-brand" href="#page-top">
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

        <div class=" container container-fluid">

            <%                
                Post post = new Post();
                
                ArrayList listaPost =  post.obtenerPost();

                Iterator iteradorPost = listaPost.iterator();
                while (iteradorPost.hasNext()) {
                    Post pst = (Post) iteradorPost.next();
                    
                    out.print("<div class='col'>"
                            + " <div class='media media-comment shadow border padd'>"
                            + " <div class='media-body u-shadow-v18 g-bg-secondary g-pa-30'>"
                            + " <div class='g-mb-15'> <h5 class='h5 g-color-gray-dark-v1 mb-0'>" + pst.getNombreUsuario() + "</h5>"
                            + "</div>"
                            + "<h6>" + pst.getTema() + "</h6>"
                            + "<p>" + pst.getConetidoPost() + "</p>"
                            + "<span class='g-color-gray-dark-v4 g-font-size-12'>" + pst.getFechaCreacion() + "</span>"
                            + "</div>"
                            + "</div>"
                            + " </div>");
                    out.print("<br>");

                }

            %>


        </div>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-uppercase fixed-bottom" id="mainNav">
            <div class="container container-fluid collapse">
                <div class="collapse navbar-collapse padd" id="navbarResponsive">
                    <ul class="me-auto navbar-nav mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link nav-link " href="#">
                                <img src="img/user-4-512.png" alt="usuario" width="30px" height="30px">
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link nav-link " aria-current="page" href="miJSP/logout.jsp">
                                <img src="img/logout-512.png" alt="usuario" width="30px" height="30px">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    </body>

</html>