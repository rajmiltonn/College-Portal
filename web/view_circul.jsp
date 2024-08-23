<%@ include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>


<!DOCTYPE html>
<html lang="en">
<style type="text/css">
<!--
.style2 {font-size: 14px; }
.style3 {
	font-size: 18px;
	font-weight: bold;
}
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
        <div align="center">
          <h3><span class="style3">Circular Details</span></h3> 
        </div>
        <table width="916" height="146" border="0" align="center">
            <%                                ResultSet rs0 = stmt3.executeQuery("select * from circular ");
                int s = 0;
                while (rs0.next()) {
                    if (s == 0) {
            %>
            
            <tr>
              <td width="27" height="32"><h4 align="center" class="style2"><strong>Id</strong></h4></td>
                <td width="86"><h4 align="center" class="style2"><strong>Name</strong></h4></td>
              <td width="84"><h4 align="center" class="style2"><strong>Department</strong></h4></td>
              <td width="88"><h4 align="center" class="style2"><strong>Year</strong></h4></td>
              <td width="99"><h4 align="center" class="style2"><strong>Semester</strong></h4></td>
              <td width="153"><h4 align="center" class="style2"><strong>Description</strong></h4></td>
              <td width="151"><h4 align="center" class="style2"><strong>Image</strong></h4></td>
              <td width="102"><h4 align="center" class="style2"><strong>Update</strong></h4></td>
              <td width="88"><h4 align="center" class="style2"><strong>Delete</strong></h4></td>
            </tr>
            <%
                }
                s++;

            %>
            <tr>
                <td height="108"><div align="center"><span class="style7">
                            <% out.print(s);%>
              </span></div></td>
                <td><div align="center"><span class="style7">
                            <% out.print(rs0.getString("name"));%>
                        </span></div></td>
                <td><div align="center"><span class="style7">
                            <% out.print(rs0.getString("depart"));%>
                        </span></div></td>
                <td><div align="center"><span class="style7">
                            <% out.print(rs0.getString("year1"));%>
                        </span></div></td>
                <td><div align="center"><span class="style7">
                            <% out.print(rs0.getString("sem"));%>
                        </span></div></td>
                <td><div align="center"><span class="style7">
                            <% out.print(rs0.getString("descr"));%>
                        </span></div></td>
                        <td><div align="center"><span class="style7">
                                  <img src="upload/<% out.print(rs0.getString("docc"));%>" width="78" height="61">
                                </span></div></td>
                                
                                <td><div align="center"><span class="style7">
                                            <a href="update.jsp?id=<% out.print(rs0.getString("id"));%>">Update</a>
                        </span></div></td>
                        <td><div align="center"><span class="style7">
                                            <a href="Delete.jsp?id=<% out.print(rs0.getString("id"));%>">Delete</a>
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

        %>                </form>

  

    <%@include file="footer.jsp" %>
  
</body>
</html>