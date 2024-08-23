
<%
try
{
 session.removeAttribute("username");
 session.removeAttribute("name");
 session.removeAttribute("pu_key");
 session.removeAttribute("pri_key");
 session.removeAttribute("dest");
response.sendRedirect("index.jsp");
}
catch(Exception e)
        {
    }
%>

