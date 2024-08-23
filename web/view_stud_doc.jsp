<%@ include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%
String name=(String)session.getAttribute("name");

%>

<!DOCTYPE html>
<html lang="en">
<style type="text/css">
<!--
.style1 {font-size: 16px}
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
        <li><a href="stud_home.jsp">Home</a></li>
         <li ><a href="add_doc.jsp">Add Doc</a></li>
        <li ><a href="view_stud_circul.jsp">View Circular</a></li>
        <li ><a href="view_stud_doc.jsp">View Documents</a></li>
        <li><a href="logout.jsp">Logout</a></li>
       
      </ul>
    </nav>
  </header>

 <form action="" method="post" name="form1" id="form1" >
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
         <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
		 <h3 align="center">Documents Details</h3>
        <table width="847" height="131" border="0" align="center">
            <%                                ResultSet rs0 = stmt3.executeQuery("select * from documents ");
                int s = 0;
                while (rs0.next()) {
                    if (s == 0) {
            %>
           
            <tr>
                <td width="32" height="32"><h4 align="center" class="style1"><strong><span class="style1">Id</span></strong></h4></td>
                <td width="75"><h4 align="center" class="style1"><strong>Name</strong></h4></td>
                <td width="109"><h4 align="center" class="style1"><strong>Department</strong></h4></td>
                <td width="132"><h4 align="center" class="style1"><strong>Year</strong></h4></td>
                <td width="98"><h4 align="center" class="style1"><strong>Semester</strong></h4></td>
                <td width="187"><h4 align="center" class="style1"><strong>Description</strong></h4></td>
                <td width="184"><h4 align="center" class="style1"><strong>Download</strong></h4></td>
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
                                    <a href="download.jsp?id=<% out.print(rs0.getString("id"));%> &fname=<%out.print(rs0.getString("docc"));%>">Download</a>
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

              
</form>

  
  <%@include file="footer.jsp" %>
  

  
  
</body>
</html>