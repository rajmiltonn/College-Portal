
<%@ include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>
<%
try
{
    

 String a = request.getParameter("btn");
        if (a.equals("Login")) {
            String uname=request.getParameter("uname");
            String password=request.getParameter("password");
            
            String qry="select * from it_supp where uname='"+uname+"' && password='"+password+"'";
            
            ResultSet rs=stmt.executeQuery(qry);
            if(rs.next())
            {
%>
<script language="javascript">
    alert("Login Successfully..");
    window.location.href = "it_home.jsp";</script>
    <%
}
else
{
    %>
<script language="javascript">
    alert("Login Failed..");
    window.location.href = "index.jsp";</script>
    <%
}
}
}
catch(Exception ex)
{
    
}
    %>


<!DOCTYPE html>
<html lang="en">
<style type="text/css">
<!--
.style1 {color: #000000}
.style2 {color: #CCCCCC}
.style3 {color: #FFFFFF}
-->
</style>

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
          <form method="post" name="fi">
            <table width="100%" border="0">
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p></td>
                </tr>
                <tr>
                    <td width="35%">&nbsp;</td>
                    <td colspan="2"><div align="center" class="style3">Welcome To Admin Login </div></td>
                    <td width="25%">&nbsp;</td>
                    <td width="8%">&nbsp;</td>
                </tr>
                <tr>
                    <td height="50">&nbsp;</td>
                    <td width="11%"><span class="style2">User Name </span></td>
                    <td width="21%"><input name="uname" type="text" id="uname" /></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td height="51">&nbsp;</td>
                    <td><span class="style2 style1">Password</span></td>
                    <td><input name="password" type="password" id="password" /></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><span class="style1"></span></td>
                    <td>
                        <p class="style1">
                            <label>
                                <input name="btn" type="submit" id="btn" value="Login" />
                            </label>
                  </p>                   </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </form>

      </div>
  </section>
  <!-- ***** Main Banner Area End ***** -->


  
  <%@include file="footer.jsp" %>
  

  
  
</body>
</html>