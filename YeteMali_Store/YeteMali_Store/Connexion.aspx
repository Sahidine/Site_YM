<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connexion.aspx.cs" Inherits="YeteMali_Store.Connexiond" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Connexion</title>
    <!-- Core CSS - Include with every page -->
   <link href="bootstrap/plugins/bootstrap/bootstrap.css" rel="stylesheet" type="text/css" />
   <link href="bootstrap/font-awesome1/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" type="text/css" />
 <link href="bootstrap/css1/style.css" rel="stylesheet" type="text/css" />
   <link href="bootstrap/css1/main-style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="container">
       
        <div class="row">
            <div class="col-md-4 col-md-offset-4 text-center logo-margin ">
              <img src="bootstrap/img/logo1.png" alt=""/>
                </div>
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">                  
                    <div class="panel-heading">
                        <h3 class="panel-title"> Se Connecter</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Votre email" name="email" type="email" autofocus/>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Votre mot de passe" name="password" type="password" value=""/>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me"/>Me rappeler
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <a href="Service.aspx" class="btn btn-lg btn-success btn-block">Connexion</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Core Scripts - Include with every page -->
     <link href="bootstrap/plugins/jquery-1.10.2.js" rel="stylesheet" type="text/css" />
     <link href="bootstrap/plugins/bootstrap/bootstrap.min.js" rel="stylesheet" type="text/css" />
     <link href="bootstrap/plugins/metisMenu/jquery.metisMenu.js"  rel="stylesheet" type="text/css" />
    </div>
    </form>
</body>
</html>
