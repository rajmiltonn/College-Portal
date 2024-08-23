<%@ include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%
String id=request.getParameter("id");

String qry="delete from circular where id='"+id+"'";

int i=stmt.executeUpdate(qry);
if(i==1)
{
    %>
<script language="javascript">
alert("Delete Successfully..");
window.location.href="view_circul.jsp";</script>
<%
}
%>