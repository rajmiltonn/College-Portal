<%@ include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html lang="en">
<style type="text/css">
<!--
.style2 {font-size: 16px; }
.style4 {font-size: 16px; font-weight: bold; }
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
        <li><a href="it_home.jsp">Home</a></li>
        <li ><a href="add_cir.jsp">Add Circular</a></li>
        <li><a href="view_circul.jsp">View Circular</a></li>
         <li><a href="view_doc.jsp">View Documents</a></li>
          <li><a href="view_user.jsp">View User</a></li>
          <li><a href="logout.jsp">Logout</a></li>
       
      </ul>
    </nav>
  </header>

  <form action="" method="post" name="form1" id="form1" >
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
		 <h3 align="center"><span class="style4">User Details</span></h3>
        <table width="664" height="117" border="0" align="center">
            <%                                ResultSet rs0 = stmt3.executeQuery("select * from register ");
                int s = 0;
                while (rs0.next()) {
                    if (s == 0) {
            %>
           
            <tr>
                <td width="39" height="32"><h4 align="center" class="style2"><strong>Id</strong></h4></td>
                <td width="90"><h4 align="center" class="style2"><strong>Name</strong></h4></td>
                <td width="121"><h4 align="center" class="style2"><strong>gender</strong></h4></td>
                <td width="173"><h4 align="center" class="style2"><strong>address</strong></h4></td>
                <td width="113"><h4 align="center" class="style2"><strong>Contact</strong></h4></td>
                <td width="102"><h4 align="center" class="style2"><strong>Email</strong></h4></td>
            </tr>
            <%
                }
                s++;

            %>
            <tr>
                <td height="52"><div align="center"><span class="style7">
                            <% out.print(s);%>
                        </span></div></td>
                <td><div align="center"><span class="style7">
                            <% out.print(rs0.getString("name"));%>
                        </span></div></td>
                <td><div align="center"><span class="style7">
                            <% out.print(rs0.getString("gender"));%>
                        </span></div></td>
                <td><div align="center"><span class="style7">
                            <% out.print(rs0.getString("address"));%>
                        </span></div></td>
                <td><div align="center"><span class="style7">
                            <% out.print(rs0.getString("contact"));%>
                        </span></div></td>
                <td><div align="center"><span class="style7">
                            <% out.print(rs0.getString("email"));%>
                        </span></div></td>
            </tr>
            <%

                }
            %>
        </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>

        %>               
  </form>

  

    <%@include file="footer.jsp" %>

  
  
</body>
</html>