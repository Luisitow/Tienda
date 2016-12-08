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
                <div class="login-panel panel panel-default"><g:if test="${flash.message}"><li class="grid"><a>${flash.message}</a></li></g:if>
                    <div class="panel-heading">
                        <h3 class="panel-title">Ingrese con su cuenta admin</h3>
                    </div>
                    <div class="panel-body">
                       <g:form action="logeo">  
                            <fieldset class="form">
                                <div class="form-group">
                                    <f:field property=" ">
                                        <g:field class="form-control" name ="micorreo" type="email" placeholder="Correo"  required=""/>
                                    </f:field>
                                </div>
                                <div class="form-group">
                                    <f:field property=" ">
                                        <g:passwordField class="form-control" name="mipas" value="${myPassword}" placeholder="Password" required=""/>
                                    </f:field>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Recordar
                                    </label>
                                </div>
                                 </fieldset>
                                <fieldset >
                                    <g:submitButton name="create" class="btn btn-lg btn-success btn-block" value="Ingresar"/>
                                </fieldset>


                        </g:form><br>
                        <g:form >
                        <fieldset >

                                    <a href="../clientes/adm/">Registrar</a>
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
