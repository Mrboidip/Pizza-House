<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
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
    <!--[if lt IE 10]>
    <div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <script src="js/html5shiv.min.js"></script>
    <![endif]-->
    <style>
      .modal {
  display: none;
  position: fixed;
  z-index: 1;
  padding-top: 100px;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgb(0, 0, 0);
  background-color: rgba(0, 0, 0, .4);
}

.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 40%;
}
.modal-content h6 {
  color: black;
  font-size: 20px;
  font-weight: 600;

}
.close {
  text-align: right;
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.19/sweetalert2.min.css" integrity="sha512-yX1R8uWi11xPfY7HDg7rkLL/9F1jq8Hyiz8qF4DV2nedX4IVl7ruR2+h3TFceHIcT5Oq7ooKi09UZbI39B7ylw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

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
      <!-- What We Offer-->
      <div class="row">
        <section class="col-md-4 section section-md bg-default" style="border-right: 1px solid grey; min-height: 500px;">
          <div class="container ">
            <h3 class="oh-desktop"><span class="d-inline-block wow slideInDown">Table</span></h3>
            <div class="" style="
                min-height: 200px;
                border: 3px solid grey;
                border-radius: 4px;
                margin: 10px 40px;
                overflow: hidden;
                ">
                <div class="table-scroll">
                  <div class="row" id="list-table">
                      <c:forEach items="${requestScope.tables}" var="table">
                          <div class="col-md-3 ">
                            <c:set var="bgColor" value="" />
                            <c:choose>
                              <c:when test="${table.orderStatus == 0}">
                                <c:set var="bgColor" value="#FFA500" />
                              </c:when>
                              <c:when test="${table.orderStatus == 2}">
                                <c:set var="bgColor" value="#00CCFF" />
                              </c:when>
                              <c:when test="${table.orderStatus == 3}">
                                <c:set var="bgColor" value="#90EE90" />
                              </c:when>
                              <c:otherwise>
                                <c:set var="bgColor" value="" />
                              </c:otherwise>
                            </c:choose>

                            <div style="position: relative;">
                              <a href="choosetable?id=${table.id}" class="d-flex tb ${table.status == 0 ? 'background-white':''}" style="justify-content: center; align-items: center; background-color: ${bgColor};">
                                <img src="images/table.png" alt="Table">
                                <span class="table-number" >${table.id}</span>
                              </a>
                              <c:if test="${table.urge == 1}">
                                <span class="fa-warning" 
                                    style="
                                    color: red; 
                                    position: absolute;
                                    top: 0;
                                    left: 10px;
                                    font-size: 15px;
                                    "></span>
                              </c:if>
                              
                            </div>
                          </div>
                      </c:forEach>
                  </div>
                </div>
            </div>
          </div>
          <div style="width: 100%; display: flex; justify-content: center;">
            <div style="border: 2px solid #6046b6; width: 80%; margin: 30px 0; opacity: 0.7;"></div>
          </div>
          <div class="container" id="order-detail-zone">
            <h3 class="oh-desktop" style="margin-bottom: 30px;"><span class="d-inline-block wow slideInDown">Order Details</span></h3>
            <div class="oh-desktop" style="width: 80%; margin: auto; margin-left: 50%;" >
              <div class="form-wrap wow slideInDown" style="width: 50%;">
                <!--Select 2-->
                <select id="orderStatus" class="form-input" data-minimum-results-for-search="Infinity" data-constraints="@Required">
                  <option value="0">Preparing</option>
                  <option value="2">Cooking</option>
                  <option value="3">Done</option>
                </select>
              </div>
            </div>
            <div style="width: 80%; margin: auto;">
              <ul class="w-100" style="margin-bottom: 50px; margin-top: 20px;" id="orderDetails">
                  <c:forEach items="${requestScope.odt}" var="food">
                      <li class="d-flex item" foodid="${food.foodId}">
                            <div class="d-flex">
                                <div class="order-item">
                                    <img src="${food.foodImage}" alt="Food">
                                </div>
                                <div class="order-item-txt">
                                    <p class="order-item-txt-name">${food.foodName}</p>
                                    <p class="order-item-txt-price">$${food.price}</p>
                                </div>
                            </div>
                            <div class="wrap-num-product flex-c-m d-flex">
                                <div class="btn-num-product-down" isAddEvent="false">
                                    <span class="fa-minus"></span>
                                </div>
                                <input type="text" value="${food.quantity}" class="num-product">
                                <div class="btn-num-product-up flex-c-m" isAddEvent="false">
                                    <span class="fa-plus"></span>
                                </div>
                            </div>
                        </li>

                  </c:forEach>
                </ul>
            </div>
            <p class="cta-modern-text cta-modern-text-2 oh-desktop" data-wow-delay=".1s" style="margin: 0;">
              <span class="cta-modern-decor cta-modern-decor-2 wow slideInLeft" style="margin: 0 15px; width: 100px;"></span>
              <span class="d-inline-block wow slideInUp">Taste some of the best PizzaHouse salads!</span>
            </p>
            <div style="margin-bottom: 20px; margin-right: 20px; color: black; font-size: 20px; font-weight: 600; text-align: right;">
              <span >Total: $<span id="totalOrder">0</span></span>
            </div>
            
            <span id="order-now-btn" class="button button-sm button-secondary button-winona wow fadeInRight" style="margin-top: 0;" onclick="orderFood()" data-wow-delay=".2s">Order Now</span>
            <span id="update-btn" class="button button-sm button-secondary button-winona wow fadeInRight" style="margin-top: 0; display:none ;" data-wow-delay=".2s" >Update</span>
            <span id="pay-btn" class="button button-sm button-secondary button-winona wow fadeInRight" style="margin-top: 0; display:none ;" data-wow-delay=".2s">Pay</span>
          </div>
        </section>
        
        <section class="section section-md bg-default col-md-8">
          <div class="container">
            <h3 class="oh-desktop"><span class="d-inline-block wow slideInDown">Menu</span></h3>
            <div class="row row-md row-30">
              <div class="col-sm-6 col-lg-2">
                <div class="oh-desktop">
                  <!-- Services Terri-->
                  <article class="services-terri wow slideInUp">
                    <div class="services-terri-figure"><img src="images/menu-1-370x278.jpg" alt="" width="370" height="278"/>
                    </div>
                    <div class="services-terri-caption" style="cursor: pointer;" >
                      <span class="services-terri-icon linearicons-leaf"></span>
                      <h6 class="services-terri-title"><span>Salad</span></h6>
                    </div>
                  </article>
                </div>
              </div>
              <div class="col-sm-6 col-lg-2">
                <div class="oh-desktop">
                  <!-- Services Terri-->
                  <article class="services-terri wow slideInDown">
                    <div class="services-terri-figure"><img src="images/menu-2-370x278.jpg" alt="" width="370" height="278"/>
                    </div>
                    <div class="services-terri-caption" style="cursor: pointer;" ><span class="services-terri-icon linearicons-pizza"></span>
                      <h6 class="services-terri-title"><span>Pizza</span></h6>
                    </div>
                  </article>
                </div>
              </div>
              <div class="col-sm-6 col-lg-2">
                <div class="oh-desktop">
                  <!-- Services Terri-->
                  <article class="services-terri wow slideInUp">
                    <div class="services-terri-figure"><img src="images/menu-3-370x278.jpg" alt="" width="370" height="278"/>
                    </div>
                    <div class="services-terri-caption" style="cursor: pointer;" ><span class="services-terri-icon linearicons-hamburger"></span>
                      <h6 class="services-terri-title"><span>Burger</span></h6>
                    </div>
                  </article>
                </div>
              </div>
              <div class="col-sm-6 col-lg-2">
                <div class="oh-desktop">
                  <!-- Services Terri-->
                  <article class="services-terri wow slideInDown">
                    <div class="services-terri-figure"><img src="images/menu-4-370x278.jpg" alt="" width="370" height="278"/>
                    </div>
                    <div class="services-terri-caption" style="cursor: pointer;" ><span class="services-terri-icon linearicons-ice-cream"></span>
                      <h6 class="services-terri-title"><span>Dessert</span></h6>
                    </div>
                  </article>
                </div>
              </div>
              <div class="col-sm-6 col-lg-2">
                <div class="oh-desktop">
                  <!-- Services Terri-->
                  <article class="services-terri wow slideInUp">
                    <div class="services-terri-figure"><img src="images/menu-5-370x278.jpg" alt="" width="370" height="278"/>
                    </div>
                    <div class="services-terri-caption" style="cursor: pointer;" ><span class="services-terri-icon linearicons-coffee-cup"></span>
                      <h6 class="services-terri-title"><span>Drink</span></h6>
                    </div>
                  </article>
                </div>
              </div>
              <div class="col-sm-6 col-lg-2">
                <div class="oh-desktop">
                  <!-- Services Terri-->
                  <article class="services-terri wow slideInDown">
                    <div class="services-terri-figure"><img src="images/menu-6-370x278.jpg" alt="" width="370" height="278"/>
                    </div>
                    <div class="services-terri-caption" style="cursor: pointer;" ><span class="services-terri-icon linearicons-steak"></span>
                      <h6 class="services-terri-title"><span>Other</span></h6>
                    </div>
                  </article>
                </div>
              </div>
            </div>
            <!-- Search -->
            <form action="" id="search-food" method="get">
              <input type="text" id="search-food-txt" placeholder="Search" name="food"/>
              <button type="submit">
                <span class="fa-search"></span>
              </button>
            </form>

            <!-- Our Shop-->
            <section class="section section-lg bg-default" style="padding: 40px 0;">
              <div class="container">
                <div class="row row-lg row-30" id="menuFood">
                  <c:forEach items="${requestScope.foods}" var="food">
                    <div class="col-sm-6 col-lg-4 col-xl-3" id="food_${food.id}">
                        <!-- Product-->
                        <article class="product wow fadeInLeft" data-wow-delay=".15s">
                          <div class="product-figure "><img src="${food.image}" class="product-image" alt="" width="161" height="162"/>
                          </div>
                          <div class="product-rating"><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star text-gray-13"></span>
                          </div>
                          <h6 class="product-title">${food.name}</h6>
                          <div class="product-price-wrap">
                            <div class="product-price">$${food.price}</div>
                          </div>
                          <div class="product-button">
                            <div class="button-wrap"><span class="button button-xs button-primary button-winona" onclick="addToOrder(${food.id})" >Add to order</span></div>
                          </div>
                        </article>
                    </div>
                  
                  </c:forEach>
                </div>
              </div>
            </section>

          </div>
        </section>
      </div>
      
      <div class="modal">
        <div class="modal-content">
          <span class="close">&times;</span>
          <h6>BILL TABLE ${sessionScope.tableId}</h6>
          <table class="table">
              <thead>
                  <tr>
                      <th class="w-50">Name</th>
                      <th>Price</th>
                      <th>Quantity</th>
                  </tr>
              </thead>
              <tbody>
                  
              </tbody>
          </table>
          <div id="checkout" class="button button-sm button-secondary button-winona " style="margin-top: 0;" data-wow-delay=".2s">Check Out</div>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.19/sweetalert2.min.js" integrity="sha512-zHKwhWCHqpmDbi6d/5Fnuwr7JKmzmpXErmoVE0OX2i0TRLlJy+19j1YzRRzD/CnpjGMSD3P0XVo+ca6v4tbn4A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
    
    <script>
      if('${sessionScope.tableId}' != '') {
        let tableNumber = '${sessionScope.tableId}';
        let tables = document.querySelectorAll("#list-table .tb");
        for (let i = 0; i < tables.length; i++) {
          if(i + 1 == tableNumber) {
            tables[i].classList.add("active");
          }
        }
      }
      if('${sessionScope.tableStatus}' != '' || '${sessionScope.tableStatus}' != '-1') {
        let tableStatus = '${sessionScope.tableStatus}';
        if(tableStatus == '1') {
          
          document.getElementById('order-now-btn').style.display = 'none';
          document.getElementById('update-btn').style.display = 'inline-block';
          document.getElementById('pay-btn').style.display = 'inline-block';
        } else {
          document.getElementById('order-now-btn').style.display = 'inline-block';
          document.getElementById('update-btn').style.display = 'none';
          document.getElementById('pay-btn').style.display = 'none';
        }
      }
    </script>

    <script>
      document.addEventListener("DOMContentLoaded", function () {
        btnAddQuantity();
      });

      function btnAddQuantity(){
        var btnNumProductUp = document.querySelectorAll(".btn-num-product-up");
        var btnNumProductDown = document.querySelectorAll(".btn-num-product-down");
        var numProducts = document.querySelectorAll(".num-product");
        var item = document.querySelectorAll('#orderDetails .item');

        btnNumProductUp.forEach(function (button, index) {
          var isAddEvent = button.getAttribute('isAddEvent');
          if(isAddEvent == 'false') {

            button.addEventListener("click", function () {
            if(numProducts[index].value != "") {
              let currentValue = parseInt(numProducts[index].value);
              numProducts[index].value = currentValue + 1;
              calTotal();
              } else {
                let currentValue = 0;
                numProducts[index].value = currentValue + 1;
                calTotal();
              }
            });
            button.setAttribute('isAddEvent','true');
          }
          
        });

        btnNumProductDown.forEach(function (button, index) {
          var isAddEvent = button.getAttribute('isAddEvent');
          if(isAddEvent == 'false') {

            button.addEventListener("click", function () {
            if(numProducts[index].value != "") {
                let currentValue = parseInt(numProducts[index].value);
                if (currentValue > 1) {
                  numProducts[index].value = currentValue - 1;
                  calTotal();
                } else if(currentValue == 1){
                  
                  Swal.fire({
                    title: 'Do you want delete this food?',
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonText: 'Yes',
                    cancelButtonText: 'No',
                  }).then((result) => {
                      if (result.isConfirmed) {
                        item[index].remove();
                        var foodId = item[index].getAttribute('foodid');
                        $.ajax({
                          url: "/PRJ/removefood",
                          type: "post",
                          data: {
                            foodId: foodId
                          },
                          success: function () {
                            item[index].remove();
                          },
                          error: function() {
                            Swal.fire({
                                title: "Remove failed!",
                                text: "Please try again",
                                icon: "error",
                                button: "OK",
                            });
                          }
                        });
                      }
                  });
                  calTotal();


                }
              } else {
                numProducts[index].value = 0;
                calTotal();
              }
            });
            button.setAttribute('isAddEvent','true');

          }
          
        });
      }
    </script>

    <script>
      const numProduct = document.querySelector(".num-product");

      numProduct.addEventListener("keydown", function (e) {
        if (
          !/^\d$/.test(e.key) && // Kiểm tra nếu không phải số từ 0-9
          e.key !== "Backspace" && // Cho phép phím Backspace (Xoá)
          e.key !== "ArrowLeft" && // Cho phép phím di chuyển sang trái
          e.key !== "ArrowRight" // Cho phép phím di chuyển sang phải
        ) {
          e.preventDefault(); // Ngăn chặn sự kiện nhập nếu không phải số hoặc phím không cho phép
        }
      });
    </script>

    <script>
      function checkFood(foodId) {
        var ids = [];
        $('#orderDetails li').each(function() {
          ids.push($(this).attr("foodid"));
        })
        if (ids.indexOf(foodId+"") != -1) {
            return true;
        } else {
            return false;
        }
      }
    </script>
    <script>
      function addToOrder(foodId) {
        if($('#order-detail-zone').length == 0) {
          Swal.fire({
                title: "Please choose table!",
                icon: "warning",
                button: "OK",
              });
        } else if(checkFood(foodId)){ 
          Swal.fire({
                title: "This food had in order!",
                text: "Please choose another food",
                icon: "warning",
                button: "OK",
              });
        } else {
          var foodName = document.querySelector("#food_" + foodId + " .product-title").textContent;
          var foodPrice = document.querySelector("#food_" + foodId +  " .product-price").textContent;
          var foodImage = document.querySelector("#food_" + foodId +  " .product-image").getAttribute("src");

          var orderDetails = document.getElementById('orderDetails');
          var foodHTML = "<li class=\"d-flex item\" foodid=\"" + foodId+ "\"><div class=\"d-flex\"><div class=\"order-item\"><img src=\"" + foodImage + "\" alt=\"Food\"></div><div class=\"order-item-txt\"><p class=\"order-item-txt-name\">" + foodName + "</p><p class=\"order-item-txt-price\">" + foodPrice + "</p></div></div><div class=\"wrap-num-product flex-c-m d-flex\"><div class=\"btn-num-product-down\" isAddEvent=\"false\"><span class=\"fa-minus\"></span></div><input type=\"text\" value=\"1\" class=\"num-product\"><div class=\"btn-num-product-up flex-c-m\" isAddEvent=\"false\"><span class=\"fa-plus\"></span></div></div></li>";

          var tempDiv = document.createElement('div');
          tempDiv.innerHTML = foodHTML;
          
          var lastChild = orderDetails.lastChild;
          orderDetails.insertBefore(tempDiv.firstChild, lastChild.nextSibling);

          btnAddQuantity(); // add event click
          calTotal(); 
        }
        
      }
    </script>

    

    <script>
      if('${sessionScope.tableId}' == '') {
        $('#order-detail-zone').remove();
      }
      function orderFood() {
        if('${sessionScope.tableId}' != '' && document.getElementById('orderDetails').childElementCount != 0) {
          let tableId = '${sessionScope.tableId}';
          var foods = [];
          document.querySelectorAll('#orderDetails .item').forEach(function(element){
            var food = {};
            food.foodid = element.getAttribute('foodid');
            food.quantity = element.querySelector('input').value;
            foods.push(food);
          });
          var jsonData = JSON.stringify(foods);
          $.ajax({
            url: "/PRJ/orderfood",
            type: "post",
            contentType: "application/json; charset=utf-8",
            data: jsonData,
            success: function (data) {
              Swal.fire({
                title: "Order success!",
                text: "Here is your table code: " + data,
                icon: "success",
                button: "OK",
              });
              document.getElementById('order-now-btn').style.display = 'none';
              document.getElementById('update-btn').style.display = 'inline-block';
              document.getElementById('pay-btn').style.display = 'inline-block';
              calTotal();
            },
            error: function() {
              Swal.fire({
                title: "Order failed!",
                text: "Please try again",
                icon: "error",
                button: "OK",
            });
            }
          });
        } else if('${sessionScope.tableId}' != '' && document.getElementById('orderDetails').childElementCount == 0){
          Swal.fire({
            title: "Your were not choose Food!",
            icon: "error",
            button: "OK",
          });
        } else {
          
          Swal.fire({
            title: "Your were not choose Table!",
            text: "Please choose one table",
            icon: "error",
            button: "OK",
          });
        }
      }
    </script>

    <script>
      function calTotal() {
        var total = 0;
        document.querySelectorAll('#orderDetails .item').forEach(function(element){
            var quantity = element.querySelector('input').value;
            var price = element.querySelector('.order-item-txt-price').textContent;
            price = price.replace('$','');
            total += quantity * price;
        });
        document.getElementById('totalOrder').innerHTML = total;
        return total;
      }
      calTotal();
    </script>


<script>
  $(document).ready(function () {
    var modal = $('.modal');
    var btn = $('#pay-btn');
    var span = $('.close');
    var checkout = $('#checkout');

    btn.click(function () {
      $('.modal tbody').empty();
      document.querySelectorAll('#orderDetails .item').forEach(function(element){
        var name = element.querySelector('.order-item-txt-name').textContent;
        var quantity = element.querySelector('input').value;
        var price = element.querySelector('.order-item-txt-price').textContent;
        
        var foodHTML = "<tr><td>" + name+ "</td><td>" + price + "</td><td>" + quantity + "</td></tr>";
        $('.modal tbody').append(foodHTML);
      });
      modal.show();
    });

    span.click(function () {
      modal.hide();
    });

    
    $(window).on('click', function (e) {
      if ($(e.target).is('.modal')) {
        modal.hide();
      }
    });


    checkout.click(function() {

      $.ajax({
        url: "/PRJ/checkout",
        type: "post",
        success: function () {
          Swal.fire({
            title: "Checkout success!",
            icon: "success",
            button: "OK",
          });
          document.querySelectorAll('#orderDetails .item').forEach(function(element){
            element.remove();
          });
          $('#order-detail-zone').hide();
          $('#list-table .tb').each(function(index,element) {
            if( element.classList.contains('active')) {
              element.classList.remove('active');
              $(element).css('background-color','#fff');
            }
          })
          modal.hide();
          document.getElementById('order-now-btn').style.display = 'inline-block';
          document.getElementById('update-btn').style.display = 'none';
          document.getElementById('pay-btn').style.display = 'none';
          calTotal();
        },
        error: function() {
          Swal.fire({
            title: "Checkout failed!",
            text: "Please try again",
            icon: "error",
            button: "OK",
        });
        }
      });
    })
  });

  
</script>
    <script>
      var orderStatus = $('#orderStatus');
      if('${requestScope.orderStatus}' != '-1' && '${requestScope.orderStatus}' != '') {
        orderStatus.val('${requestScope.orderStatus}');
      }
      orderStatus.change(function() {
        var status = orderStatus.val();
        $.ajax({
          url: "/PRJ/changeOrderStatus",
          type: "post",
          data: {
            status: status
          },
          success: function () {
            Swal.fire({
              title: "Change success!",
              icon: "success",
              button: "OK",
            });
          },
          error: function() {
            Swal.fire({
              title: "Change failed!",
              text: "Please try again",
              icon: "error",
              button: "OK",
          });
          }
        });
      })
    </script>
    <script>
      
      function validateOrder() {
        if($('#orderDetails .item').length == 0) {
          Swal.fire({
            title: "Your were not choose Food!",
            icon: "error",
            button: "OK",
          });
          return false;
        }
        return true;
      }
      
      var updateBtn = $('#update-btn');
      updateBtn.click(function() {
        if(validateOrder()) {
          var foods = [];
          document.querySelectorAll('#orderDetails .item').forEach(function(element){
            var food = {};
            food.foodid = element.getAttribute('foodid');
            food.quantity = element.querySelector('input').value;
            foods.push(food);
          });
          var jsonData = JSON.stringify(foods);
          $.ajax({
            url: "/PRJ/updatefood",
            type: "post",
            contentType: "application/json; charset=utf-8",
            data: jsonData,
            success: function () {
              Swal.fire({
                title: "Update success!",
                icon: "success",
                button: "OK",
              });
            },
            error: function() {
              Swal.fire({
                title: "Update failed!",
                text: "Please try again",
                icon: "error",
                button: "OK",
            });
            }
          });
        }
      })
    </script>
    <script>
      var searchFood = $('#search-food-txt'); 

      searchFood.on("input", function() {
        var searchFoodVal = searchFood.val(); // a
        $.ajax({
            url: "/PRJ/searchfood",
            type: "get",
            data: {
                text: searchFoodVal
            },
            success: function (data) {
                var row = document.getElementById("menuFood");
                row.innerHTML = data;
            },

        });
      })
    </script>
    <script>
      $('.services-terri-caption').each(function(index, element) {
        element.addEventListener('click', function() {
          var category = element.querySelector('h6 span').textContent.toLowerCase();
          debugger
          $.ajax({
              url: "/PRJ/searchfoodbycate",
              type: "get",
              data: {
                  text: category
              },
              success: function (data) {
                  var row = document.getElementById("menuFood");
                  row.innerHTML = data;
              }

          });
        })
      })
     
    </script>
    <script>

    </script>
  </body>
</html>