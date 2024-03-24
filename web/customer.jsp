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
      <header class="section page-header">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap">
          <nav class="rd-navbar rd-navbar-modern" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="56px" data-xl-stick-up-offset="56px" data-xxl-stick-up-offset="56px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
            <div class="rd-navbar-inner-outer">
              <div class="rd-navbar-inner">
                <!-- RD Navbar Panel-->
                <div class="rd-navbar-panel">
                  <!-- RD Navbar Toggle-->
                  <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                  <!-- RD Navbar Brand-->
                  <div class="rd-navbar-brand"><a class="brand" href="index.html"><img class="brand-logo-dark" src="images/logo-198x66.png" alt="" width="198" height="66"/></a></div>
                </div>
                <div class="rd-navbar-right rd-navbar-nav-wrap">
                  <div class="rd-navbar-aside">
                    <ul class="rd-navbar-contacts-2">
                      <li>
                        <div class="unit unit-spacing-xs">
                          <div class="unit-left"><span class="icon mdi mdi-phone"></span></div>
                          <div class="unit-body"><a class="phone" href="tel:#">0123456789</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="unit unit-spacing-xs">
                          <div class="unit-left"><span class="icon mdi mdi-map-marker"></span></div>
                          <div class="unit-body"><a class="address" href="#">FPT University Campus Hoa Lac</a></div>
                        </div>
                      </li>
                    </ul>
                    <ul class="list-share-2">
                      <li><a class="icon mdi mdi-facebook" href="#"></a></li>
                      <li><a class="icon mdi mdi-twitter" href="#"></a></li>
                      <li><a class="icon mdi mdi-instagram" href="#"></a></li>
                      <li><a class="icon mdi mdi-google-plus" href="#"></a></li>
                    </ul>
                  </div>
                  <div class="rd-navbar-main">
                    <!-- RD Navbar Nav-->
                    <ul class="rd-navbar-nav">
                      <li class="rd-nav-item active"><a class="rd-nav-link" href="customer.jsp">Home</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="rd-navbar-project-hamburger rd-navbar-project-hamburger-open rd-navbar-fixed-element-1" data-multitoggle=".rd-navbar-inner" data-multitoggle-blur=".rd-navbar-wrap" data-multitoggle-isolate="data-multitoggle-isolate">
                  <div class="project-hamburger"><span class="project-hamburger-arrow"></span><span class="project-hamburger-arrow"></span><span class="project-hamburger-arrow"></span>
                  </div>
                </div>
                <div class="rd-navbar-project">
                  <div class="rd-navbar-project-header">
                    <h5 class="rd-navbar-project-title">Gallery</h5>
                    <div class="rd-navbar-project-hamburger rd-navbar-project-hamburger-close" data-multitoggle=".rd-navbar-inner" data-multitoggle-blur=".rd-navbar-wrap" data-multitoggle-isolate="data-multitoggle-isolate">
                      <div class="project-close"><span></span><span></span></div>
                    </div>
                  </div>
                  <div class="rd-navbar-project-content rd-navbar-content">
                    <div>
                      <div class="row gutters-20" data-lightgallery="group">
                        <div class="col-6">
                          <!-- Thumbnail Creative-->
                          <article class="thumbnail thumbnail-creative"><a href="images/project-1-1200x800-original.jpg" data-lightgallery="item">
                              <div class="thumbnail-creative-figure"><img src="images/project-1-195x164.jpg" alt="" width="195" height="164"/>
                              </div>
                              <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div></a></article>
                        </div>
                        <div class="col-6">
                          <!-- Thumbnail Creative-->
                          <article class="thumbnail thumbnail-creative"><a href="images/project-2-1200x800-original.jpg" data-lightgallery="item">
                              <div class="thumbnail-creative-figure"><img src="images/project-2-195x164.jpg" alt="" width="195" height="164"/>
                              </div>
                              <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div></a></article>
                        </div>
                        <div class="col-6">
                          <!-- Thumbnail Creative-->
                          <article class="thumbnail thumbnail-creative"><a href="images/project-3-1200x800-original.jpg" data-lightgallery="item">
                              <div class="thumbnail-creative-figure"><img src="images/project-3-195x164.jpg" alt="" width="195" height="164"/>
                              </div>
                              <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div></a></article>
                        </div>
                        <div class="col-6">
                          <!-- Thumbnail Creative-->
                          <article class="thumbnail thumbnail-creative"><a href="images/project-4-1200x800-original.jpg" data-lightgallery="item">
                              <div class="thumbnail-creative-figure"><img src="images/project-4-195x164.jpg" alt="" width="195" height="164"/>
                              </div>
                              <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div></a></article>
                        </div>
                        <div class="col-6">
                          <!-- Thumbnail Creative-->
                          <article class="thumbnail thumbnail-creative"><a href="images/project-5-1200x800-original.jpg" data-lightgallery="item">
                              <div class="thumbnail-creative-figure"><img src="images/project-5-195x164.jpg" alt="" width="195" height="164"/>
                              </div>
                              <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div></a></article>
                        </div>
                        <div class="col-6">
                          <!-- Thumbnail Creative-->
                          <article class="thumbnail thumbnail-creative"><a href="images/project-6-1200x800-original.jpg" data-lightgallery="item">
                              <div class="thumbnail-creative-figure"><img src="images/project-6-195x164.jpg" alt="" width="195" height="164"/>
                              </div>
                              <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div></a></article>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <!-- Swiper-->
      <section class="section swiper-container swiper-slider swiper-slider-2 swiper-slider-3" data-loop="true" data-autoplay="5000" data-simulate-touch="false" data-slide-effect="fade">
        <div class="swiper-wrapper text-sm-left">
          <div class="swiper-slide context-dark" data-slide-bg="images/slide-1-1920x753.jpg">
            <div class="swiper-slide-caption section-md">
              <div class="container">
                <div class="row">
                  <div class="col-sm-9 col-md-8 col-lg-7 col-xl-7 offset-lg-1 offset-xxl-0">
                    <h1 class="oh swiper-title"><span class="d-inline-block" data-caption-animate="slideInUp" data-caption-delay="0">Perfect pizza</span></h1>
                    <p class="big swiper-text" data-caption-animate="fadeInLeft" data-caption-delay="300">Experience the taste of a perfect pizza at PizzaHouse, one of the best restaurants!</p><a class="button button-lg button-primary button-winona button-shadow-2" href="#" data-caption-animate="fadeInUp" data-caption-delay="300">View our menu</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide context-dark" data-slide-bg="images/slide-2-1920x753.jpg">
            <div class="swiper-slide-caption section-md">
              <div class="container">
                <div class="row">
                  <div class="col-sm-8 col-lg-7 offset-lg-1 offset-xxl-0">
                    <h1 class="oh swiper-title"><span class="d-inline-block" data-caption-animate="slideInDown" data-caption-delay="0">Quality ingredients</span></h1>
                    <p class="big swiper-text" data-caption-animate="fadeInRight" data-caption-delay="300">We use only the best ingredients to make one-of-a-kind pizzas for our customers.</p>
                    <div class="button-wrap oh"><a class="button button-lg button-primary button-winona button-shadow-2" href="#" data-caption-animate="slideInUp" data-caption-delay="0">View our menu</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Swiper Pagination-->
        <div class="swiper-pagination" data-bullet-custom="true"></div>
        <!-- Swiper Navigation-->
        <div class="swiper-button-prev">
          <div class="preview">
            <div class="preview__img"></div>
          </div>
          <div class="swiper-button-arrow"></div>
        </div>
        <div class="swiper-button-next">
          <div class="swiper-button-arrow"></div>
          <div class="preview">
            <div class="preview__img"></div>
          </div>
        </div>
      </section>
      <!-- What We Offer-->
      <section class="section section-md bg-default">
        <div class="container">
          <h3 class="oh-desktop"><span class="d-inline-block wow slideInDown">Our Menu</span></h3>
          <div class="row row-md row-30">
            <div class="col-sm-6 col-lg-4">
              <div class="oh-desktop">
                <!-- Services Terri-->
                <article class="services-terri wow slideInUp">
                  <div class="services-terri-figure"><img src="images/menu-1-370x278.jpg" alt="" width="370" height="278"/>
                  </div>
                  <div class="services-terri-caption"><span class="services-terri-icon linearicons-leaf"></span>
                    <h5 class="services-terri-title"><a href="#">Salads</a></h5>
                  </div>
                </article>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4">
              <div class="oh-desktop">
                <!-- Services Terri-->
                <article class="services-terri wow slideInDown">
                  <div class="services-terri-figure"><img src="images/menu-2-370x278.jpg" alt="" width="370" height="278"/>
                  </div>
                  <div class="services-terri-caption"><span class="services-terri-icon linearicons-pizza"></span>
                    <h5 class="services-terri-title"><a href="#">Pizzas</a></h5>
                  </div>
                </article>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4">
              <div class="oh-desktop">
                <!-- Services Terri-->
                <article class="services-terri wow slideInUp">
                  <div class="services-terri-figure"><img src="images/menu-3-370x278.jpg" alt="" width="370" height="278"/>
                  </div>
                  <div class="services-terri-caption"><span class="services-terri-icon linearicons-hamburger"></span>
                    <h5 class="services-terri-title"><a href="#">Burgers</a></h5>
                  </div>
                </article>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4">
              <div class="oh-desktop">
                <!-- Services Terri-->
                <article class="services-terri wow slideInDown">
                  <div class="services-terri-figure"><img src="images/menu-4-370x278.jpg" alt="" width="370" height="278"/>
                  </div>
                  <div class="services-terri-caption"><span class="services-terri-icon linearicons-ice-cream"></span>
                    <h5 class="services-terri-title"><a href="#">Desserts</a></h5>
                  </div>
                </article>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4">
              <div class="oh-desktop">
                <!-- Services Terri-->
                <article class="services-terri wow slideInUp">
                  <div class="services-terri-figure"><img src="images/menu-5-370x278.jpg" alt="" width="370" height="278"/>
                  </div>
                  <div class="services-terri-caption"><span class="services-terri-icon linearicons-coffee-cup"></span>
                    <h5 class="services-terri-title"><a href="#">Drinks</a></h5>
                  </div>
                </article>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4">
              <div class="oh-desktop">
                <!-- Services Terri-->
                <article class="services-terri wow slideInDown">
                  <div class="services-terri-figure"><img src="images/menu-6-370x278.jpg" alt="" width="370" height="278"/>
                  </div>
                  <div class="services-terri-caption"><span class="services-terri-icon linearicons-steak"></span>
                    <h5 class="services-terri-title"><a href="#">Other</a></h5>
                  </div>
                </article>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Section CTA-->
      <section class="primary-overlay section parallax-container" data-parallax-img="images/bg-3.jpg">
        <div class="parallax-content section-xl context-dark text-md-left">
          <div class="container">
            <div class="row justify-content-end">
              <div class="col-sm-8 col-md-7 col-lg-5">
                <div class="cta-modern">
                  <h3 class="cta-modern-title wow fadeInRight">Best atmosphere</h3>
                  <p class="lead">PizzaHouse is the place of the best pizza and high-quality service.</p>
                  <p class="cta-modern-text oh-desktop" data-wow-delay=".1s"><span class="cta-modern-decor wow slideInLeft"></span><span class="d-inline-block wow slideInDown">Ben Smith, Founder</span></p><a class="button button-md button-secondary-2 button-winona wow fadeInUp" href="#" data-wow-delay=".2s">View Our Services</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Our Shop-->
      <section class="section section-lg bg-default">
        <div class="container">
          <h3 class="oh-desktop"><span class="d-inline-block wow slideInUp">Selected Pizzas</span></h3>
          <div class="row row-lg row-30">
            <div class="col-sm-6 col-lg-4 col-xl-3">
              <!-- Product-->
              <article class="product wow fadeInLeft" data-wow-delay=".15s">
                <div class="product-figure"><img src="images/product-1-161x162.jpg" alt="" width="161" height="162"/>
                </div>
                <div class="product-rating"><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star text-gray-13"></span>
                </div>
                <h6 class="product-title">Margherita Pizza</h6>
                <div class="product-price-wrap">
                  <div class="product-price">$24.00</div>
                </div>
                <div class="product-button">
                  <div class="button-wrap"><a class="button button-xs button-primary button-winona" href="#">Add to cart</a></div>
                  <div class="button-wrap"><a class="button button-xs button-secondary button-winona" href="#">View Product</a></div>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 col-xl-3">
              <!-- Product-->
              <article class="product wow fadeInLeft" data-wow-delay=".1s">
                <div class="product-figure"><img src="images/product-2-161x162.jpg" alt="" width="161" height="162"/>
                </div>
                <div class="product-rating"><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span>
                </div>
                <h6 class="product-title">Mushroom Pizza</h6>
                <div class="product-price-wrap">
                  <div class="product-price">$24.00</div>
                </div>
                <div class="product-button">
                  <div class="button-wrap"><a class="button button-xs button-primary button-winona" href="#">Add to cart</a></div>
                  <div class="button-wrap"><a class="button button-xs button-secondary button-winona" href="#">View Product</a></div>
                </div><span class="product-badge product-badge-new">New</span>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 col-xl-3">
              <!-- Product-->
              <article class="product wow fadeInLeft" data-wow-delay=".05s">
                <div class="product-figure"><img src="images/product-3-161x162.jpg" alt="" width="161" height="162"/>
                </div>
                <div class="product-rating"><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star text-gray-13"></span>
                </div>
                <h6 class="product-title">Hawaiian Pizza</h6>
                <div class="product-price-wrap">
                  <div class="product-price">$24.00</div>
                </div>
                <div class="product-button">
                  <div class="button-wrap"><a class="button button-xs button-primary button-winona" href="#">Add to cart</a></div>
                  <div class="button-wrap"><a class="button button-xs button-secondary button-winona" href="#">View Product</a></div>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 col-xl-3">
              <!-- Product-->
              <article class="product wow fadeInLeft">
                <div class="product-figure"><img src="images/product-4-161x162.jpg" alt="" width="161" height="162"/>
                </div>
                <div class="product-rating"><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span>
                </div>
                <h6 class="product-title">Pesto Pizza</h6>
                <div class="product-price-wrap">
                  <div class="product-price product-price-old">$40.00</div>
                  <div class="product-price">$24.00</div>
                </div>
                <div class="product-button">
                  <div class="button-wrap"><a class="button button-xs button-primary button-winona" href="#">Add to cart</a></div>
                  <div class="button-wrap"><a class="button button-xs button-secondary button-winona" href="#">View Product</a></div>
                </div><span class="product-badge product-badge-sale">Sale</span>
              </article>
            </div>
          </div>
        </div>
      </section>

      <!-- Section CTA-->
      <section class="primary-overlay section parallax-container" data-parallax-img="images/bg-4.jpg">
        <div class="parallax-content section-xxl context-dark text-md-left">
          <div class="container">
            <div class="row justify-content-end">
              <div class="col-sm-9 col-md-7 col-lg-5">
                <div class="cta-modern">
                  <h3 class="cta-modern-title cta-modern-title-2 oh-desktop"><span class="d-inline-block wow fadeInLeft">-30% on all salads & drinks</span></h3>
                  <p class="cta-modern-text cta-modern-text-2 oh-desktop" data-wow-delay=".1s"><span class="cta-modern-decor cta-modern-decor-2 wow slideInLeft"></span><span class="d-inline-block wow slideInUp">Taste some of the best PizzaHouse salads!</span></p><a class="button button-lg button-secondary button-winona wow fadeInRight" href="contacts.html" data-wow-delay=".2s">contact us</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- What We Offer-->
      <div class="row" id="order-and-food">
        <section class="col-md-4 section section-md bg-default" style="border-right: 1px solid grey; min-height: 500px;">
          <div class="container " >
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
                          <div class="col-md-3 " >
                            <a href="#" class="d-flex tb ${table.status == 1 ? 'background-red':''}" style="justify-content: center; align-items: center;">
                              <img src="images/table.png" alt="Table">
                              <span class="table-number" >${table.id}</span>
                            </a>
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
              <div class="form-wrap" style="width: 60%;">
                <h6>Order Status: <span id="order-status"></span></h6>
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
            <span id="rush-btn" class="button button-sm button-secondary button-winona wow fadeInRight" style="margin-top: 0; display:none ;" data-wow-delay=".2s">Rush Order</span>
            <span id="rush-btn-not-allow" class="button button-sm button-secondary cursor-not-allow back-ground-grey" style="margin-top: 0; display:none ;" data-wow-delay=".2s">Try again in<div id="countdown"></div></span>
            
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
            <form action="" id="search-food" method="">
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
          <h6>ENTER CODE TABLE <span>${sessionScope.tableId}</span></h6>
          <div class="form-wrap" style="margin-bottom: 30px;">
            <input class="form-input codeTxt" id="contact-your-name-6" type="text" name="name" data-constraints="@Required">
            <label class="form-label" for="contact-your-name-6">Table Code*</label>
          </div>
          <div id="done-code" class="button button-sm button-secondary button-winona " style="margin-top: 0;" data-wow-delay=".2s">Done</div>
        </div>
      </div>

      <!-- Page Footer-->
      <footer class="section footer-modern context-dark footer-modern-2">
        <div class="footer-modern-line">
          <div class="container">
            <div class="row row-50">
              <div class="col-md-6 col-lg-4">
                <h5 class="footer-modern-title oh-desktop"><span class="d-inline-block wow slideInLeft">What We Offer</span></h5>
                <ul class="footer-modern-list d-inline-block d-sm-block wow fadeInUp">
                  <li><a href="#">Pizzas</a></li>
                  <li><a href="#">Burgers</a></li>
                  <li><a href="#">Salads</a></li>
                  <li><a href="#">Drinks</a></li>
                  <li><a href="#">Seafood</a></li>
                  <li><a href="#">Drinks</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-4 col-xl-3">
                <h5 class="footer-modern-title oh-desktop"><span class="d-inline-block wow slideInLeft">Information</span></h5>
                <ul class="footer-modern-list d-inline-block d-sm-block wow fadeInUp">
                  <li><a href="about-us.html">About us</a></li>
                  <li><a href="#">Latest News</a></li>
                  <li><a href="#">Our Menu</a></li>
                  <li><a href="#">FAQ</a></li>
                  <li><a href="#">Shop</a></li>
                  <li><a href="contacts.html">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-lg-4 col-xl-5">
                <h5 class="footer-modern-title oh-desktop"><span class="d-inline-block wow slideInLeft">Newsletter</span></h5>
                <p class="wow fadeInRight">Sign up today for the latest news and updates.</p>
                <!-- RD Mailform-->
                <form class="rd-form rd-mailform rd-form-inline rd-form-inline-sm oh-desktop" data-form-output="form-output-global" data-form-type="subscribe" method="post" action="bat/rd-mailform.php">
                  <div class="form-wrap wow slideInUp">
                    <input class="form-input" id="subscribe-form-2-email" type="email" name="email" data-constraints="@Email @Required"/>
                    <label class="form-label" for="subscribe-form-2-email">Enter your E-mail</label>
                  </div>
                  <div class="form-button form-button-2 wow slideInRight">
                    <button class="button button-sm button-icon-3 button-primary button-winona" type="submit"><span class="d-none d-xl-inline-block">Subscribe</span><span class="icon mdi mdi-telegram d-xl-none"></span></button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="footer-modern-line-2">
          <div class="container">
            <div class="row row-30 align-items-center">
              <div class="col-sm-6 col-md-7 col-lg-4 col-xl-4">
                <div class="row row-30 align-items-center text-lg-center">
                  <div class="col-md-7 col-xl-6"><a class="brand" href="index.html"><img src="images/logo-inverse-198x66.png" alt="" width="198" height="66"/></a></div>
                  <div class="col-md-5 col-xl-6">
                    <div class="iso-1"><span><img src="images/like-icon-58x25.png" alt="" width="58" height="25"/></span><span class="iso-1-big">9.4k</span></div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-12 col-lg-8 col-xl-8 oh-desktop">
                <div class="group-xmd group-sm-justify">
                  <div class="footer-modern-contacts wow slideInUp">
                    <div class="unit unit-spacing-sm align-items-center">
                      <div class="unit-left"><span class="icon icon-24 mdi mdi-phone"></span></div>
                      <div class="unit-body"><a class="phone" href="tel:#">+1 718-999-3939</a></div>
                    </div>
                  </div>
                  <div class="footer-modern-contacts wow slideInDown">
                    <div class="unit unit-spacing-sm align-items-center">
                      <div class="unit-left"><span class="icon mdi mdi-email"></span></div>
                      <div class="unit-body"><a class="mail" href="mailto:#">info@demolink.org</a></div>
                    </div>
                  </div>
                  <div class="wow slideInRight">
                    <ul class="list-inline footer-social-list footer-social-list-2 footer-social-list-3">
                      <li><a class="icon mdi mdi-facebook" href="#"></a></li>
                      <li><a class="icon mdi mdi-twitter" href="#"></a></li>
                      <li><a class="icon mdi mdi-instagram" href="#"></a></li>
                      <li><a class="icon mdi mdi-google-plus" href="#"></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="footer-modern-line-3">
          <div class="container">
            <div class="row row-10 justify-content-between">
              <div class="col-md-6"><span>514 S. Magnolia St. Orlando, FL 32806</span></div>
              <div class="col-md-auto">
                <!-- Rights-->
                <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span><span></span><span>.&nbsp;</span><span>All Rights Reserved.</span><span> Design&nbsp;by&nbsp;<a href="https://www.templatemonster.com">TemplateMonster</a></span></p>
              </div>
            </div>
          </div>
        </div>
      </footer>
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
          
          document.getElementById('order-now-btn').remove();
          document.getElementById('update-btn').style.display = 'inline-block';
          document.getElementById('rush-btn').style.display = 'inline-block';
        } else {
          document.getElementById('order-now-btn').style.display = 'inline-block';
          document.getElementById('update-btn').remove();
          document.getElementById('rush-btn').remove();
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
            success: function () {
              Swal.fire({
                title: "Order success!",
                icon: "success",
                button: "OK",
              });
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
  function startCountdown(durationInSeconds) {
      const countdownElement = document.getElementById("countdown");

      let remainingTime = durationInSeconds;
      const interval = 1000; 

      function updateCountdown() {
          const minutes = Math.floor(remainingTime / 60);
          const seconds = remainingTime % 60;

          countdownElement.innerHTML = minutes + ":"  + seconds;

          if (remainingTime <= 0) {
              $('#rush-btn').show();
              $('#rush-btn-not-allow').hide();
              clearInterval(countdownInterval);
          }

          remainingTime--;
      }

      updateCountdown();
      const countdownInterval = setInterval(updateCountdown, interval);
  }

  // Bắt đầu đếm ngược 2 phút (120 giây)
</script>

<script>
   if('${sessionScope.tableId}' == '') {
      $('#order-detail-zone').remove();
  }

  $(document).ready(function () {
    var modal = $('.modal');
    var btn = $('#rush-btn');
    var span = $('.close');


    btn.click(function () {
      $.ajax({
        url: "/PRJ/urgeorder",
        type: "post",
        success: function () {
          Swal.fire({
              title: "Send request rush success!",
              text: "Your food will be served to you as soon as possible.",
              icon: "success",
              button: "OK",
          });
          btn.hide();
          $('#rush-btn-not-allow').show();
          startCountdown(120);
        },
        error: function() {
          Swal.fire({
            title: "Something wrong!",
            text: "Please try again",
            icon: "error",
            button: "OK",
        });
        }
      });

      
    });

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
      var orderStatus = $('#order-status');
      if('${requestScope.orderStatus}' != '-1' && '${requestScope.orderStatus}' != '') {
        var status = '${requestScope.orderStatus}';
        if(status == '0') {
          orderStatus.html('Preparing');
        } else if(status == '2') {
          orderStatus.html('Cooking');
        } else if(status == '3') {
          orderStatus.html('Done');
        }
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
        var searchFoodVal = searchFood.val();
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
      $('#list-table .tb').each(function(index,element) {
        debugger
        $(element).click(function(e) {
            e.preventDefault(); 
            var isHadPeople = element.classList.contains('background-red');
            
            if(isHadPeople) {
              var modal  = $('.modal');
              var titleModal = $('.modal-content h6 span');
              var codeTxt = $('.modal-content .codeTxt').val('');
              var tableId = element.querySelector('span').textContent;


              titleModal.html(tableId);
              modal.show();

              $('#done-code').click(function(){
                var codeTxt = $('#contact-your-name-6').val();
                if(codeTxt != '') {
                  $.ajax({
                    url: "/PRJ/checkcode",
                    type: "get",
                    data: {
                      code: codeTxt,
                      tableId: tableId
                    },
                    success: function (data) {
                      if(data == "false") {
                        Swal.fire({
                            title: "Wrong code!",
                            text: "Please try again",
                            icon: "error",
                            button: "OK",
                        });
                      } else {
                        debugger
                        window.location.href = 'customer-choose-table?id='+tableId + '#order-and-food';
                      }
                    },
                    error: function() {
                      Swal.fire({
                          title: "Something wrong!",
                          text: "Please try again",
                          icon: "error",
                          button: "OK",
                      });
                    }
                  });
                }
              })
            } else {
              Swal.fire({
                  title: "Table available",
                  text: "Please contact with staff to order food!",
                  icon: "info",
                  button: "OK",
              });
            }
        });
        
      })
    </script>
    <script>
       
    </script>
  </body>
</html>