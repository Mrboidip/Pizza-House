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
              <a href="admin-dashboard"  class="remove-a"><li>Dashboard</li></a>
              <a href="admin-account" class="remove-a"><li >Account Manage</li></a>
              <a href="admin-food" class="remove-a"><li class="bg-secondary text-black">Food List</li></a>
            </ul>
        </div>
        <div class="col-md-10" style="margin-top: 50px;">
            <div class="container table-jquery" style="border: 1px solid grey; margin-bottom: 50px;">
                <h4>Menu Food</h4>
                <div class="d-flex" style="justify-content: right; margin: 20px 0;">
                  <button type="button" id="btn-add" class="button button-circle button-secondary button-winona " 
                        style="
                        margin-top: 0; 
                        padding: 10px 0;
                        " 
                        data-wow-delay=".2s">
                          Add Food <span class="fa-plus"></span>
                    </button>
                </div>
                <table id="myTable" class="display" style="margin: 20px 0;">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th style="text-align: center;">Image</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Price</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.foods}" var="food">
                            <tr >
                                <td>${food.id}</td>
                                <td style="text-align: center;">
                                  <img src="${food.image}" alt="Food">
                                </td>
                                <td>${food.name}</td>
                                <td>${food.category}</td>
                                <td>$${food.price}</td>
                                <td style="text-align: center;">
                                  <span class="fa-info bg-secondary food-update" foodid="${food.id}" style="padding: 10px; color: black; cursor: pointer;"></span>
                                  <span class="fa-trash food-delete" foodid="${food.id}" style="padding: 10px; background-color: #ef143e; color: white; cursor: pointer;"></span>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
      </div>
     
      <!-- Modal -->
      <div class="modal">
        <div class="modal-content">
          <span class="close">&times;</span>
          <h6>Update info</span></h6>

          <form id="form-subbmit" >
            <div class="row" style="margin: 20px 0;">
              <div class="col-md-7" style="padding-top: 20px;">
                <input type="text" id="food-id-txt" hidden>
                <div class="form-wrap" style="margin-bottom: 30px;">
                  <input class="form-input inputTxt" id="food-name" type="text" name="foodName" data-constraints="@Required">
                  <label class="form-label labelTxt" for="food-name" style="display: none;">Name</label>
                </div>
                <div class="form-wrap" style="margin-bottom: 30px;">
                  <select id="food-category" class="form-input" name="foodCategory" data-minimum-results-for-search="Infinity" data-constraints="@Required">
                    <option value="pizza">Pizza</option>
                    <option value="salad">Salad</option>
                    <option value="burger">Burger</option>
                    <option value="dessert">Dessert</option>
                    <option value="drink">Drink</option>
                    <option value="other">Other</option>
                  </select>
                </div>
                <div class="form-wrap" style="margin-bottom: 30px; position: relative;">
                  <input class="form-input inputTxt" id="food-price" type="text" name="foodPrice" data-constraints="@Required" style="padding-right: 50px;">
                  <label class="form-label labelTxt" for="food-price" style="display: none;">Price</label>
                  <span class="fa-money" style="position: absolute;
                  right: 0;
                  top: 6px;
                  padding: 0 10px;
                  font-size: 30px;"></span>
                </div>
                <div class="form-wrap" style="margin-bottom: 30px; position: relative;">
                  <input class="form-input inputTxt" id="food-image" type="text" name="foodPrice" data-constraints="@Required" style="padding-right: 50px;" disabled>
                  <label class="form-label labelTxt" for="food-image" style="display: none;">Image</label>
                  <span class="fa-image" style="position: absolute;
                  right: 0;
                  top: 6px;
                  padding: 0 10px;
                  font-size: 30px;"></span>
                </div>
              </div>
              <div class="col-md-5 upload-image">
                <input type="file" id="file" name="foodImage" accept="image/*" hidden>
                <div class="img-area" data-img="">
                  <i class='bx bxs-cloud-upload icon'></i>
                  <h3>Upload Image</h3>
                  <p>Image size must be less than <span>2MB</span></p>
                  <img src="" alt="" id="old-image" style="display: none; margin-top: 0;">
                </div>
                <button type="button" class="select-image">Select Image</button>
              </div>
            </div>
            <button type="button" id="btn-update" class="button button-sm button-secondary button-winona " style="margin-top: 0;" data-wow-delay=".2s">Update</button>
            <button type="button" id="btn-add-db" class="button button-sm button-secondary button-winona " style="margin-top: 0; " data-wow-delay=".2s">Add</button>
          </form>
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


    <script>
   

    $(document).ready(function () {
      var modal = $('.modal');
      var span = $('.close');

      span.click(function () {
        modal.hide();
        $('.labelTxt').each(function(index,element){
          $(element).hide();
        })
      });

      
      $(window).on('click', function (e) {
        if ($(e.target).is('.modal')) {
          modal.hide();
          $('.labelTxt').each(function(index,element){
            $(element).hide();
          })
        }
      });
      
    });


    </script>
    <script>
      $('#btn-add').click(function () {

        //reset modal
        $('#food-id-txt').val('');
        $('.img-area img').hide();
        $('#food-image').val('');
        $('#food-name').val(''); 
        $('#food-price').val(''); 
        $('#food-category').val('pizza').trigger('change'); 
        
        $('.labelTxt').each(function(){
          $(this).show();
        })
        $('#btn-update').hide();
        $('#btn-add-db').show();
        $('.modal').show();
      })
    </script>

    <script>
      var tableRow = $('tbody tr');
      $('.food-update').each(function(index, element){
        $(element).click(function(){
          $('#btn-update').show();
          $('#btn-add-db').hide();
          var foodid = element.getAttribute('foodid');
          
          var foodName = $(tableRow[index]).find('td').eq(2).text(); // lay food name
          var foodCategory = $(tableRow[index]).find('td').eq(3).text(); // lay food category
          var foodPrice = $(tableRow[index]).find('td').eq(4).text(); // lay food price 
          var foodImage = $(tableRow[index]).find('td img').attr('src'); // lay src image
          var foodImageName = foodImage.replace("images/","");
          var imgArea = $('.img-area').find('img').eq(1).remove();
          foodPrice = foodPrice.replace('$','');
          //hien thi
          $('#food-id-txt').val(foodid);
          $('.img-area img').attr('src', foodImage);
          $('.img-area img').show();

          $('#food-image').val(foodImageName);

          $('#food-name').val(foodName); // dien thong tin vao form update
          $('#food-price').val(foodPrice); // dien thong tin vao form update
          $('#food-category').val(foodCategory).trigger('change'); // dien thong tin vao form update
          
          $('.modal').show();
        })
      });

      var formLabel = $('.labelTxt');
      $('.inputTxt').each(function(index,element){
        $(element).on("input", function(){
          if($(element).val() == '') {
            $(formLabel[index]).show();
          } 
        })
      })

      
      $('.food-delete').each(function(index, element){
        $(element).click(function(){
          var foodId = element.getAttribute('foodid');
          Swal.fire({
                    title: 'Do you want delete this food?',
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonText: 'Yes',
                    cancelButtonText: 'No',
                  }).then((result) => {
                      if (result.isConfirmed) {
                        $.ajax({
                          url: "/PRJ/deleteFoodDB",
                          type: "post",
                          data: {
                            foodId: foodId
                          },
                          success: function () {
                            // delete food in screen
                            $('tbody tr').each(function(){
                              var firstChild = $(this).find('td:first-child').text();
                              if(firstChild == foodId) {
                                $(this).remove();
                              }
                            })

                            //notification
                            Swal.fire({
                                title: "Delete success!",
                                icon: "success",
                                button: "OK",
                            });

                          },
                          error: function() {
                            Swal.fire({
                                title: "Delete failed!",
                                text: "Please try again",
                                icon: "error",
                                button: "OK",
                            });
                          }
                        });
                      }
                  });
        })
      });
      
      $('#btn-update').click(function(){
        var imageInput = document.getElementById('file');
        if (imageInput.files.length > 0) {
          var foodId = $('#food-id-txt').val();
          var foodName = $('#food-name').val();
          var foodCategory = $('#food-category').val();
          var foodPrice = $('#food-price').val();
          var foodImage = $('#food-image').val();
          $.ajax({
            url: "/PRJ/updateFoodDB",
            type: "post",
            data: {
              foodId: foodId,
              foodName: foodName,
              foodCategory: foodCategory,
              foodPrice: foodPrice,
              foodImage: foodImage
            },
            success: function () {
              Swal.fire({
                  title: "Update success!",
                  icon: "success",
                  button: "OK",
              }).then(() => {
                window.location.href = "admin-food"
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

        } else {
          Swal.fire({
                  title: "You need upload image!",
                  icon: "error",
                  button: "OK",
              });
        }
      })

      $('#btn-add-db').click(function(){
        var imageInput = document.getElementById('file');
        if (imageInput.files.length > 0) {
          var foodName = $('#food-name').val();
          var foodCategory = $('#food-category').val();
          var foodPrice = $('#food-price').val();
          var foodImage = $('#food-image').val();
          $.ajax({
            url: "/PRJ/addFoodDB",
            type: "post",
            data: {
              foodName: foodName,
              foodCategory: foodCategory,
              foodPrice: foodPrice,
              foodImage: foodImage
            },
            success: function () {
              Swal.fire({
                  title: "Add success!",
                  icon: "success",
                  button: "OK",
              }).then(() => {
                window.location.href = "admin-food"
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

        } else {
          Swal.fire({
                  title: "You need upload image!",
                  icon: "error",
                  button: "OK",
              });
        }
      })

    </script>
    <script>
      const selectImage = document.querySelector('.select-image');
      const inputFile = document.querySelector('#file');
      const imgArea = document.querySelector('.img-area');
      

      selectImage.addEventListener('click', function () {
        inputFile.click();
      })

      inputFile.addEventListener('change', function () {
        const image = this.files[0]
        if(image.size < 2000000) {
          const reader = new FileReader();
          reader.onload = ()=> {
            const allImg = imgArea.querySelectorAll('img');
            allImg.forEach(item=> item.remove());
            const imgUrl = reader.result;
            const img = document.createElement('img');
            img.style.margin = 0;
            img.src = imgUrl;
            imgArea.appendChild(img);
            imgArea.classList.add('active');
            imgArea.dataset.img = image.name;
            $("#food-image").val(image.name);
            $("label[for='" + $("#food-image").attr("id") + "']").hide();
          }
          reader.readAsDataURL(image);
        } else {
          alert("Image size more than 2MB");
        }
      })
    </script>



    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.js"></script>
    <script>
      $(document).ready( function () {
        $('#myTable').DataTable();
    } )
  </script>


  <script>
    $(document).ready(function() {
      $('.paginate_button').each(function(){
        $('.paginate_button').off('click').on('click', function(event) {
          debugger
          event.preventDefault();
        });
        
      })
    });
  </script>
  </body>
</html>