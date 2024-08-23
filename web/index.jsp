<!DOCTYPE html>
<html lang="en">

    <%@include file="header.jsp" %>

<body>

   
  <!--header-->
  <header class="main-header clearfix" role="header">
    <div class="logo">
      <a href="#"><em>College</em> Portal</a>
    </div>
    <a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
    <nav id="menu" class="main-nav" role="navigation">
      <ul class="main-menu">
        <li><a href="index.jsp">Home</a></li>
        <li ><a href="it_sup.jsp">IT Supporter</a></li>
        <li><a href="student.jsp">Student</a></li>
       
      </ul>
    </nav>
  </header>

  <!-- ***** Main Banner Area Start ***** -->
  <section class="section main-banner" id="top" data-section="section1">
      <video autoplay muted loop id="bg-video">
          <source src="assets/images/course-video.mp4" type="video/mp4" />
      </video>

      <div class="video-overlay header-text">
          <div class="caption">
              <h6>COLLEGE </h6>
              <h2><em>COLLEGE</em> PORTAL</h2>
              <div class="main-button">
                  <div class="scroll-to-section"><a href="#section2">Discover more</a></div>
              </div>
          </div>
      </div>
  </section>
  <!-- ***** Main Banner Area End ***** -->


  
  <%@include file="footer.jsp" %>
  

  
  
</body>
</html>