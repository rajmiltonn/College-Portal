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
            String qry="select * from register where uname='"+uname+"' && password='"+password+"'";
            ResultSet rs=stmt.executeQuery(qry);
            if(rs.next())
            {
                String name=rs.getString("name");
                session.setAttribute("name", name);
                %>
                <script language="javascript">
alert("Login Successfully..");
window.location.href="stud_home.jsp";</script>
                <%
            }
            else
            {
                %>
                <script language="javascript">
alert("Login Failed..");
window.location.href="index.jsp";</script>
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
          <form name="form1" method="post" action="">
          <table width="95%" border="0">
               <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
             <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2" rowspan="10"></td>
              <td height="31" colspan="2"><div align="center"><span class="style1 style3">User Login </span></div></td>
              <td width="25%">&nbsp;</td>
            </tr>
            <tr>
              <td width="10%">&nbsp;</td>
              <td width="22%">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="55"><span class="style8 style3">User Name </span></td>
              <td><label>
                <input name="uname" type="text" id="uname">
              </label></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="50"><span class="style8 style3">Password</span></td>
              <td><label>
                <input name="password" type="password" id="password">
              </label></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="40">&nbsp;</td>
              <td><label>
                <span class="style3">
                <input name="btn" type="submit" id="btn" value="Login">
                <input type="reset" name="Submit2" value="Reset">
                </span></label></td>
              
              <td> <a href="stud_reg.jsp" class="style3" >New Student Register Here... </a></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
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