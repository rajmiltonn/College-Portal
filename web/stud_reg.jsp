<%@ include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%    try {
        String a = request.getParameter("btn");

        if (a.equals("Register")) {
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String age = request.getParameter("age");
            String email = request.getParameter("email");
            String contact = request.getParameter("pnumber");
            String zip = request.getParameter("zip");
            String address = request.getParameter("address");
            String uname = request.getParameter("uname");
            String psw = request.getParameter("password");

            String qry = "select max(id) as maxid from register";
            ResultSet rs = stmt1.executeQuery(qry);
            int id1 = 0;
            if (rs.next()) {
                id1 = rs.getInt("maxid");
            }
            int id2 = id1 + 1;
            String ins = "insert into register values('" + id2 + "','" + name + "','" + gender + "','" + address + "','" + contact + "','" + email + "','" + uname + "','" + psw + "')";
            int n = stmt1.executeUpdate(ins);
            if (n == 1) {
%>
<script language="javascript">
    alert('Register suceessfully');
    window.location.href = "student.jsp";
</script>
<%
} else {
%>
<script language="javascript">
    alert("Data Not Save");
    window.location.href = "student.jsp";
</script>
<%
            }
        }

    } catch (Exception ex) {

    }
%>


<!DOCTYPE html>
<html lang="en">
<style type="text/css">
<!--
.style1 {color: #000000}
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

  
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
          
          
          <div align="center" class="style1"><strong>New Account Register </strong></div>
    <form id="form1" name="form1" method="post" action="">
        <table width="100%" border="0">
            <tr>
                <td width="5%" height="28">&nbsp;</td>
                <td width="5%">&nbsp;</td>
                <td width="20%">&nbsp;</td>
                <td width="14%">&nbsp;</td>
                <td width="36%">&nbsp;</td>
                <td width="11%">&nbsp;</td>
                <td width="4%">&nbsp;</td>
                <td width="5%">&nbsp;</td>
            </tr>
            
            <tr>
                <td height="44">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><span class="style1">Name</span></td>
                <td><label>
                        <input name="name" type="text" id="name" required />
                    </label></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="43">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><span class="style1">Gender</span></td>
                <td><label>
                        <input name="gender" type="radio" id="gender" value="Male" />
                        Male
                        <input name="gender" type="radio" id="gender" value="Female" />
                        Female</label></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="52">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><span class="style1">Address</span></td>
                <td><textarea name="address" id="address" required></textarea></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="38">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><span class="style1">Phone Number </span></td>
                <td><input name="pnumber" type="text" id="pnumber" required/></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="37">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><span class="style1">Email Id </span></td>
                <td><input name="email" type="text" id="email" required/></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="42">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><span class="style1">User Name </span></td>
                <td><input name="uname" type="text" id="uname" required/></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="42">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><span class="style1">Password</span></td>
                <td><input name="password" type="password" id="password" required/></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><label>
                        <div align="center">
                            <input name="btn" type="submit" id="btn" value="Register" />
                        </div>
                    </label></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>

     


  
  <%@include file="footer.jsp" %>
  

  
  
</body>
</html>