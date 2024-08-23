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
        <li><a href="it_home.jsp">Home</a></li>
        <li ><a href="add_cir.jsp">Add Circular</a></li>
        <li><a href="view_circul.jsp">View Circular</a></li>
         <li><a href="view_doc.jsp">View Documents</a></li>
          <li><a href="view_user.jsp">View User</a></li>
          <li><a href="logout.jsp">Logout</a></li>
       
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
              <h2><em>Welcome To</em> IT Supporter</h2>
              
          </div>
      </div>
  </section>
  <!-- ***** Main Banner Area End ***** -->


  

    <%@include file="footer.jsp" %>

  
  
</body>
</html>