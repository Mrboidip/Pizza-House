<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Contacts</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500,600,700,900%7CRaleway:500">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/login.css">
    <!--[if lt IE 10]>
    <div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <script src="js/html5shiv.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="preloader">
      <div class="wrapper-triangle">
        <div class="pen">
          <div class="line-triangle">
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
          </div>
          <div class="line-triangle">
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
          </div>
          <div class="line-triangle">
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="page">
      <!-- Page Header-->
      <%@include file="components/header.jsp"%>
      <!-- Login Form-->
      <div class="container" 
          style="
          max-height: 500px; 
          display: flex; 
          justify-content: center; 
          align-items: center;
          margin-top: 60px;
          margin-bottom: 60px;
          border: 1px solid grey;
          border-radius: 5px;
          overflow: hidden;
          padding-left: 0;
          padding-right: 0;
          ">
        <div class="col-md-5" style="background-color: green; padding-left: 0;padding-right: 0;">
          <img src="images/login-img.jpg"/>
        </div>
        <div class="col-md-7" >
          <div class="login-header" style="font-weight: 900; color: black; font-size: 30px; ">SIGNUP</div>

          <form action="register" method="post" style="padding-bottom: 20px;">
            <div class="login-body">
              <div style="margin: 15px 0;">
                <input type="email" name="email" placeholder="Email" value="${requestScope.email}" style="width: 80%; padding: 5px;"/>
              </div>
              <div style="margin: 15px 0;">
                <input type="text" name="phoneNumber" placeholder="Phone Number" value="${requestScope.phoneNumber}" style="width: 80%; padding: 5px;"/>
              </div>
              <div style="margin: 15px 0;">
                <input type="password" name="password" placeholder="Password" style="width: 80%; padding: 5px;"/>
              </div>
              <div style="margin: 15px 0;">
                <input type="password" name="rePassword" placeholder="Re-enter Password" style="width: 80%; padding: 5px;"/>
              </div>
            </div>
  
            <button type="submit" class="btn btn-primary" style="padding: 10px 50px;">Create an account</button>
  
          </form>
          
          <div>
            Already have an account? <span> <a href="login.jsp">Log In</a></span>
          </div>

        </div>
      </div>

      <!-- Page Footer-->
      <%@include file="components/footer.jsp"%>
    </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
      if('${requestScope.checkEmail}' == 'true'){
        swal({
          title: "An email have already existed!",
          icon: "error",
          button: "OK",
        });
      } else if('${requestScope.checkRepassword}' == 'true') {
        swal({
          title: "Password does not match!",
          icon: "error",
          button: "OK",
        });
      }
    </script>
  </body>
</html>