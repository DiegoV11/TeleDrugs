<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Cambiar Contraseña - TeleDrugs</title>
        <link href="Login/fonts/material-icon/css/material-design-iconic-font.min.css" rel="stylesheet" >
        <link href="Login/css/style.css" rel="stylesheet" >
    </head>
    <body>
        <div class="main">
            <section class="signup">
                <div class="container">
                    <% if (session.getAttribute("msg") != null) {%>
                    <div class="alert alert-success" role="alert" >
                        <%=(String) session.getAttribute("msg")%>
                    </div>
                    <% session.removeAttribute("msg"); %>
                    <% } %>
                    <% if (session.getAttribute("err") != null) {%>
                    <div class="alert alert-alert" role="alert" >
                        <%=(String) session.getAttribute("err")%>
                    </div>
                    <% session.removeAttribute("err"); %>
                    <% } %>
                    <div class="signup-content" style="height:400px;">
                        <div class="signup-form">
                            <h2 style="text-align:center;" class="form-title">Cambio de contraseña</h2>
                            <form method="POST" action="<%=request.getContextPath()%>/PaginaPrincipal?act=cambio" class="register-form" id="register-form">
                                <div class="form-group" style="width:400px; margin:auto; margin-bottom:30px;">
                                    <label for="pass"><i class="zmdi zmdi-email"></i></label>
                                    <input style="width:400px;" type="email" name="Correo" id="pass" placeholder="Correo"/>
                                </div>
                                <div class="form-group" style="width:400px; margin:auto; margin-bottom:30px;">
                                    <label for="pass"><i class="zmdi zmdi-assignment-account"></i></label>
                                    <input style="width:400px;" type="password" name="pass" id="pass" placeholder="Nueva Contraseña"/>
                                </div>
                                <div style="width:400px; margin:auto; margin-bottom:30px;" class="form-group">
                                    <label for="repass"><i class="zmdi zmdi-assignment-account"></i></label>
                                    <input type="password" name="repass" id="repass" placeholder="Vuelva escribir la nueva contraseña" />
                                </div>

                                <div class="form-group form-button">
                                    <!--div style="display:flex; align-items:center; justify-content:center;" class="column"><a style="width:150px" class="btn btn-success" data-bs-toggle="modal" href="#exampleModalToggle" onclick="alert('Se ha enviado el codigo de recuperacion a su correo')">Recuperar</a></div-->
                                    <div style="display:flex; align-items:center; justify-content:center;" class="column"><button  type="submit" style="width:150px" class="btn btn-success" data-bs-toggle="modal">Cambiar Contraseña</button></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>