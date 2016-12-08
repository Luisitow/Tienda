<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Acceso:</title>
    <!-- Core CSS - Include with every page -->

    <asset:stylesheet src="bootstrap1.css"/>
    <asset:stylesheet src="font-awesome.css"/>
    <asset:stylesheet src="pace-theme-big-counter.css"/>
    <asset:stylesheet src="style.css"/>
    <asset:stylesheet src="main-style.css"/>
    <asset:stylesheet src="morris-0.4.3.min.css"/>



   </head>
<body class="body-Login-back">

    <div class="container">

        <div class="row">

            <div class="col-md-4 col-md-offset-4 text-center logo-margin ">

                </div>
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Registro Clientes</h3>
                    </div>
                    <div class="panel-body">
                       <g:form action="guardar">
                            <fieldset class="form">
                                <div class="form-group">
                                    <f:field property=" ">Nombre
                                        <g:field class="form-control" name ="minombre" type="text" pattern="[a-zA-Z]+" placeholder="Nombre" required=""  />
                                    </f:field>
                                </div>
                                <div class="form-group">
                                    <f:field property=" ">Email
                                        <g:field class="form-control" name ="micorreo" type="email" placeholder="abc@gmail.com" required=""/>
                                    </f:field>
                                </div>
                                <div class="form-group">
                                    <f:field property=" ">Contraseña
                                        <g:passwordField class="form-control" name="mipass" value="${myPassword}" placeholder="Contraseña" minlength="5" required=""/>
                                    </f:field>
                                </div>
                                 </fieldset>

                                <fieldset >
                                    <g:submitButton  name="create" class="btn btn-lg btn-success btn-block" value="Guardar"/>
                                </fieldset>

                        </g:form><br>
                        <g:form >
                        <fieldset >

                                    <a href="javascript:window.history.back()">Cancelar</a>
                        </fieldset>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <asset:javascript src="jquery-1.10.2.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="jquery.metisMenu.js"/>

</body>
</html>
