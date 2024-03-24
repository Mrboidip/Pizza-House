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
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/modal.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.19/sweetalert2.min.css" integrity="sha512-yX1R8uWi11xPfY7HDg7rkLL/9F1jq8Hyiz8qF4DV2nedX4IVl7ruR2+h3TFceHIcT5Oq7ooKi09UZbI39B7ylw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <style>
      .upload-image {
        max-width: 400px;
        width: 100%;
        background: #fff;
        padding: 30px;
        border-radius: 30px;
      }

      .img-area {
        position: relative;
        width: 100%;
        height: 240px;
        background: #f2f2f2;
        margin-bottom: 30px;
        border-radius: 15px;
        overflow: hidden;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
      }
      .img-area .icon {
        font-size: 100px;
      }
      .img-area h3 {
        font-size: 20px;
        font-weight: 500;
        margin-bottom: 6px;
      }
      .img-area p {
        color: #999;
      }
      .img-area p span {
        font-weight: 600;
      }
      .img-area img {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
       
        z-index: 100;
      }
      .img-area::before {
        content: attr(data-img);
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, .5);
        color: #fff;
        font-weight: 500;
        text-align: center;
        display: flex;
        justify-content: center;
        align-items: center;
        pointer-events: none;
        opacity: 0;
        transition: all .3s ease;
        z-index: 200;
      }
      .img-area.active:hover::before {
        opacity: 1;
      }
      .select-image {
        display: block;
        width: 100%;
        padding: 16px 0;
        border-radius: 15px;
        background: var(--blue);
        color: #fff;
        font-weight: 500;
        font-size: 16px;
        border: none;
        cursor: pointer;
        transition: all .3s ease;
      }
      .select-image:hover {
        background: #ffe745;
        color: black;
      }
      .remove-a {
        text-decoration: none; 
        color: inherit; 
      }
      .remove-a:hover {
          background-color: transparent;
      }
      .remove-a:visited {
          color: inherit; 
          outline: none; 
      }
    </style>

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
      <!-- Admin Dashboard-->
      <div class="row" style="margin-top: 0; min-height: 650px;">
        <div class="col-md-2 bg-gray-300" style=" text-align: left; padding: 0; border-right: 2px soid grey; ">
            <ul class="dashboard-option">
              <a href="admin-dashboard"  class="remove-a"><li class="bg-secondary text-black">Dashboard</li></a>
              <a href="admin-account" class="remove-a"><li >Account Manage</li></a>
              <a href="admin-food" class="remove-a"><li >Food List</li></a>
            </ul>
        </div>
        <div class="col-md-10" style="margin-top: 50px;">
          <div class="row" style="margin-bottom: 30px;">
            <div class="col-md-6" style="display: flex; justify-content: center;" >
              <div class="bg-primary" style="height: 180px; color: #fff; width: 42%; border-radius: 10px; padding: 20px;">
                  <p id="total-money" style="font-size: 19px;">Total money in </p>
                <p style="font-size: 50px; font-weight: 700;">$${requestScope.totalMoney}</p>
              </div>
            </div>
            <div class="col-md-6" style="display: flex; justify-content: center;">
              <div class="bg-secondary" style="height: 180px; color: black; width: 42%; border-radius: 10px; padding: 20px;">
                <p id="total-order" style="font-size: 19px;">Number Order in </p>
                <p style="font-size: 50px; font-weight: 700;">${requestScope.totalOrder}</p>
              </div>
            </div>
          </div>
          <div class="container" style="margin-bottom: 30px;">
              <h4>Best Seller In Month</h4>
              <div class="row">
                  <c:forEach items="${requestScope.bestSellers}" var="food">
                      <div class="col-sm-6 col-lg-4 col-xl-3" style="margin-bottom: 20px;">
                        <!-- Product-->
                        <article class="product wow fadeInLeft" data-wow-delay=".15s">
                          <div class="product-figure"><img src="${food.image}" alt="" width="161" height="162"/>
                          </div>
                          <div class="product-rating"><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star text-gray-13"></span>
                          </div>
                          <h6 class="product-title">${food.name}</h6>
                          <div class="product-price-wrap">
                            <div class="product-price">$${food.price}</div>
                          </div>
                          <div class="product-button">
                            <div class="button-wrap"><a class="button button-xs button-secondary button-winona" href="admin-food">View Product</a></div>
                          </div>
                          <span class="product-badge product-badge-new">Best Seller: ${food.total}</span>
                        </article>
                      </div>
                  </c:forEach>
                
              </div>
          </div>
          <div class="container" style="margin-bottom: 30px;">
            <h4>Slow Sales In Month</h4>
            <div class="row">
                <c:forEach items="${requestScope.slowSellers}" var="food">
                     <div class="col-sm-6 col-lg-4 col-xl-3" style="margin-bottom: 20px;">
                        <!-- Product-->
                        <article class="product wow fadeInLeft" data-wow-delay=".15s">
                          <div class="product-figure"><img src="${food.image}" alt="" width="161" height="162"/>
                          </div>
                          <div class="product-rating"><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star text-gray-13"></span>
                          </div>
                          <h6 class="product-title">${food.name}</h6>
                          <div class="product-price-wrap">
                            <div class="product-price">$${food.price}</div>
                          </div>
                          <div class="product-button">
                            <div class="button-wrap"><a class="button button-xs button-secondary button-winona" href="admin-food">View Product</a></div>
                          </div>
                          <span class="product-badge product-badge-sale">Quantity: ${food.total}</span>
                        </article>
                      </div>
                </c:forEach>
             
            </div>
        </div>
        </div>
      </div>
     
      <!-- Modal -->
      <!-- <div class="modal">
        <div class="modal-content">
          <span class="close">&times;</span>
          <h6>Update info (<span id="user-name"></span>)</h6>

          <form id="form-subbmit" >
            <div class="row" style="margin: 20px 0;">
              <div class="col-md-12" style="padding-top: 20px;">
                <div class="form-wrap" style="margin-bottom: 30px; position: relative;">
                  <input type="text" id="userIdTxt" hidden>
                  <input class="form-input inputTxt" id="password" type="text" name="foodPrice" data-constraints="@Required" style="padding-right: 50px;">
                  <label class="form-label labelTxt" for="password" >New password</label>
                  <span class="fa-key" style="position: absolute;
                  right: 0;
                  top: 6px;
                  padding: 0 10px;
                  font-size: 30px;"></span>
                </div>
                <div class="form-wrap" style="margin-bottom: 30px; position: relative;">
                  <input class="form-input inputTxt" id="re-password" type="text" name="foodPrice" data-constraints="@Required" style="padding-right: 50px;">
                  <label class="form-label labelTxt" for="re-password" >Re-enter Password</label>
                  <span class="fa-key" style="position: absolute;
                  right: 0;
                  top: 6px;
                  padding: 0 10px;
                  font-size: 30px;"></span>
                </div>
              </div>
            </div>
            <button type="button" id="btn-reset" class="button button-sm button-secondary button-winona " style="margin-top: 0;" data-wow-delay=".2s">Reset</button>
          </form>
        </div>
      </div> -->

      

      <!-- Page Footer-->
      <%@include file="components/footer.jsp"%>
    </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.19/sweetalert2.min.js" integrity="sha512-zHKwhWCHqpmDbi6d/5Fnuwr7JKmzmpXErmoVE0OX2i0TRLlJy+19j1YzRRzD/CnpjGMSD3P0XVo+ca6v4tbn4A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


    <script>
   

    $(document).ready(function () {
      var modal = $('.modal');
      var span = $('.close');

      span.click(function () {
        modal.hide();
      });

      
      $(window).on('click', function (e) {
        if ($(e.target).is('.modal')) {
          modal.hide();
         
        }
      });
      
    });


    </script>
    <script>
      function getEnglishMonthName(monthNumber) {
          const monthNames = [
              "January", "February", "March", "April", "May", "June",
              "July", "August", "September", "October", "November", "December"
          ];

          if (monthNumber >= 1 && monthNumber <= 12) {
              return monthNames[monthNumber - 1];
          } else {
              return "Invalid Month";
          }
      }

      const currentDate = new Date();
      const currentMonth = currentDate.getMonth() + 1; 

      const englishMonthName = getEnglishMonthName(currentMonth);

      document.getElementById("total-money").textContent = "Total money in " + englishMonthName;
      document.getElementById("total-order").textContent = "Number order in " + englishMonthName;
    </script>

   
  </body>
</html>