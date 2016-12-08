<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Principal | ADMINISTRADOR</title>
    <!-- Core CSS - Include with every page -->

    <asset:stylesheet src="bootstrap1.css"/>
    <asset:stylesheet src="font-awesome.css"/>
    <asset:stylesheet src="pace-theme-big-counter.css"/>
    <asset:stylesheet src="style.css"/>
    <asset:stylesheet src="main-style.css"/>
    <asset:stylesheet src="morris-0.4.3.min.css"/>

 

   </head>
<body>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/adminp/principal">
                 <img src="${resource(dir:'images',file:'carrito.png')}" alt="">
                </a>
            </div>
            <g:form action="logout">
            <ul class="nav navbar-top-links navbar-right">
                  <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i ><img src="${resource(dir:'images',file:'user32.png')}" alt=""></i>
                    </a>
                    <!-- dropdown user-->
                    <ul class="dropdown-menu dropdown-user">
                        <!--<li><a href="#"><i class="fa fa-user fa-fw"></i>User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                        </li>-->
                        <li class="divider"></li>
                        <li><a href="logout"><i class="fa fa-sign-out fa-fw"></i>Cerrar</a>
                        </li>
                    </ul>
                    <!-- end dropdown-user -->
                </li>
            </ul>
            </g:form>
          </nav>
        
        <!-- end navbar top -->


        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li>
                        <!-- user image section-->
                        <div class="user-section">
                            <div class="user-section-inner">
                               
                                <img src="${resource(dir:'images',file:'user.jpg')}" alt="">
                            </div>
                            <div class="user-info">
                                <div><strong>Admin</strong></div>
                                <div class="user-text-online">
                                    <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Bienvenido
                                </div>
                            </div>
                        </div>
                        <!--end user image section-->
                    </li>
                    <li class="sidebar-search">
                     
                    </li>
                    
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Productos<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="../productos/agregar">Agregar</a>
                            </li>
                            <li>
                                <a href="../productos/mostrar">Lista</a>
                            </li>
                        </ul>
                        <!-- second-level-items -->
                    </li>
                    
                    <li>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i>Categorias<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/categorias/agregar">Agregar</a>
                            </li>
                            <li>
                                <a href="/categorias/mostrar">Lista</a>
                            </li>
                            
                          <!--  <li>
                                <a href="notifications.html">Notifications</a>
                            </li>
                            <li>
                                <a href="typography.html">Typography</a>
                            </li>
                            <li>
                                <a href="grid.html">Grid</a>
                            </li>-->
                        </ul>
                        
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i>Marca<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/marcas/agregar" >Agregar</a>
                            </li>
                            <li>
                                <a href="/marcas/mostrar">Lista</a>
                            </li>
                            
                           
                        </ul>
                        <!-- second-level-items -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-files-o fa-fw"></i>Clientes<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/clientes/mostrar">Lista</a>
                            </li>
                            
                        </ul>
                        <!-- second-level-items -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-files-o fa-fw"></i>Ventas<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/ventas/mostrar">Ver lista</a>
                            </li>
                           
                        <!-- second-level-items -->
                    </li>
                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>
        <!-- end navbar side -->
        <!--  page-wrapper -->
        <div id="page-wrapper">

            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">

                    <h1 class="page-header">ADMIN</h1>
                    
                </div>

                <!--End Page Header -->
            </div>

            
            <div class="row">
                <div class="col-lg-8">
              <!--Area chart example -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                        </div>
                        <div class="panel-body">
                            <div id="morris-area-chart"></div>
                        </div>
                   </div>
                    <!--End area chart example -->
                    <!--Simple table example -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
              </div>
                      <div class="panel-body">
              </div>
                    <!--End simple table example -->
                </div>
                <div class="col-lg-4">
             </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <!-- Notifications-->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i>Notifications Panel
                        </div>
                        <div class="panel-body">
                    <!-- /.list-group -->
                       </div>
                    </div>
                    <!--End Notifications-->
                </div>
             
                <div class="col-lg-4">
                   
                </div>
            </div>
        </div>
        <!-- end page-wrapper -->
    </div>
    <!-- end wrapper -->
    <!-- Core Scripts - Include with every page -->
    <asset:javascript src="jquery-1.10.2.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="jquery.metisMenu.js"/>
    <asset:javascript src="pace.js"/>
    <asset:javascript src="siminta.js"/>
    <asset:javascript src="raphael-2.1.0.min.js"/>
    <asset:javascript src="morris.js"/>
    <asset:javascript src="dashboard-demo.js"/>
<!--
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/plugins/pace/pace.js"></script>
    <script src="assets/scripts/siminta.js"></script>
    Page-Level Plugin Scripts
    <script src="assets/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/plugins/morris/morris.js"></script>
    <script src="assets/scripts/dashboard-demo.js"></script>-->
</body>
</html>
