<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<head>
    <title>Bootstrap Example</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }

        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {height: 450px}

        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;
            background-color: #f1f1f1;
            height: 100%;
        }

        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }

        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }
            .row.content {height:auto;}
        }
    </style>
</head>
<body>

<nav class="navbar navbar-default" style="background-color: #FFC6C6" >
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand " href="#"><strong>Archive</strong></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign up</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Login</a></li>
            </ul>

        </div>
    </div>
</nav>
<div class="container-fluid text-center">
    <div class="row content">

        <div class="col-sm-2 col-xs-2 sidenav">
            <div class="container-fluid">
            <ul class="nav nav-stacked btn btn-lg">
                <li class="active "><a data-toggle="pill" href="#home" ><span class="glyphicon glyphicon-home "></span><p>Home</p></a></li>
                <li><a data-toggle="pill" href="#menu1"><span class="glyphicon glyphicon-book "></span><p>Menu 1</p></a></li>
                <li><a data-toggle="pill" href="#menu2"><span class="glyphicon glyphicon-camera"></span><p>Menu 2</p></a></li>
                <li><a data-toggle="pill" href="#menu3"><span class="glyphicon glyphicon-calendar"></span><p>Menu 3</p></a></li>
            </ul>
            </div>
        </div>
        <div class="col-xs-8 col-sm-8">
                <div class="tab-content">
                    <div id="home" class="tab-pane fade in active">
                        <div class="jumbotron text-center">
                            <h3>ID : ${member.id}</h3>
                            <h3>PW : ${member.pw}</h3>
                            <img src="img/moonseong.jpg" class="img-circle" alt="moonseong" width="200" height="200">
                            <div class="btn-group btn-group-justified " style="margin-top: 10px">
                                <a href="#" class="btn btn-primary">Profile</a>
                                <a href="#" class="btn btn-primary">Friends</a>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                        More <span class="caret"></span></button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#" >Edit Profile</a></li>
                                        <li><a href="#" >My Timeline</a></li>
                                    </ul>
                                </div>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>

                    <div id="menu1" class="tab-pane fade">
                        <h3>Menu 1</h3>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3>Menu 2</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                    </div>
                    <div id="menu3" class="tab-pane fade">
                        <h3>Menu 3</h3>
                        <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                    </div>
                </div>
            </div>
        <div class="col-sm-2 col-xs-2 sidenav">
            <div class="well">
                <p>ADS</p>
            </div>
            <div class="well">
                <p>ADS</p>
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-default navbar-fixed-bottom text-center "style="background-color: #FFC6C6">
  <h4>Archive</h4>
</nav>

</body>
</html>
