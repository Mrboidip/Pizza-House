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
              <div class="rd-navbar-brand"><a class="brand" href="home"><img class="brand-logo-dark" src="images/logo-198x66.png" alt="" width="198" height="66"/></a></div>
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
                <ul class="rd-navbar-nav" id="navbar-header">
                  <li class="rd-nav-item"><a class="rd-nav-link" href="home">Home</a>
                  </li>
                  <!-- <li class="rd-nav-item"><a class="rd-nav-link" href="about-us.jsp">About us</a>
                  </li>
                  <li class="rd-nav-item"><a class="rd-nav-link" href="typography.jsp">Typography</a>
                  </li> -->
                  <li class="rd-nav-item"><a class="rd-nav-link" href="login">Log In</a>
                  </li>
                  <li class="rd-nav-item"><a class="rd-nav-link" href="logout" style="color: black; font-size: 22px;"><span class="fa-sign-out"></span></a>
                  </li>

                </ul>
              </div>
            </div>
            <!-- <div class="rd-navbar-project-hamburger rd-navbar-project-hamburger-open rd-navbar-fixed-element-1">
              <a href="logout">
                <div class="logout fa-sign-out" style="color: black; font-size: 22px;">
                </div>
              </a>
            </div> -->
          </div>
        </div>
      </nav>
    </div>
  </header>
  <script>
    if('${sessionScope.user}' != '') {
      var elements = document.querySelectorAll("#navbar-header .rd-nav-item");

      if (elements.length > 1) {
          elements[1].style.display = "none";
      }
    } else {
      var elements = document.querySelectorAll("#navbar-header .rd-nav-item");

      if (elements.length > 2) {
          elements[2].style.display = "none";
      }
    }

  </script>

  <script>
    // Get all navigation links
    var navLinks = document.querySelectorAll('.rd-nav-item a');

    // Loop through all navigation links
    for (var i = 0; i < navLinks.length; i++) {
        // Check if the href attribute of the link matches the current page URL
        if (navLinks[i].href === window.location.href) {
            // If it does, add the 'active' class to the link
            navLinks[i].parentElement.classList.add('active');
        }
    }
  </script>