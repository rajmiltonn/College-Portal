
<%@ include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>
<%@ page import="org.apache.commons.fileupload.*, java.util.List, java.io.File, java.util.Iterator"%>
<%@ page import="org.apache.commons.io.*" %>
<%     java.util.Calendar calendar = java.util.Calendar.getInstance();

    String day = String.valueOf(calendar.get(java.util.Calendar.DATE));
    String month = String.valueOf(calendar.get(java.util.Calendar.MONTH) + 1);
    String year = String.valueOf(calendar.get(java.util.Calendar.YEAR));

    String rdate = day + "-" + month + "-" + year;
%>



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
        <form id="f1" name="f1" method="post" action="#"  enctype="multipart/form-data" >
            <table width="39%" height="438" border="0" align="center">
                <tr>&nbsp;</tr>
                <tr>&nbsp;</tr>
                <tr>&nbsp;</tr>
                <tr>&nbsp;</tr>
                <tr>&nbsp;</tr>
                <tr>&nbsp;</tr>
                <tr>
                    <td height="42" colspan="2"  align="center" ><div class="style5"><h3>Add Circular</h3>
                        </div></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td height="54">circular Name</td>
                    <td><label><input name="name" type="text" id="name" /></label></td>
                </tr>
                <tr>
                    <td height="47">Year</td>
                    <td><input name="year" type="text" id="year" /></td>
                </tr>
                <tr>
                    <td height="41">Department</td>
                    <td><input name="depart" type="text" id="depart"  /></td>
                </tr>
                <tr>
                    <td height="45">Semester</td>
                    <td><input type="text" name="sem" id="sem"></td>
                </tr>
                <tr>
                    <td height="51">Description</td>
                    <td><input name="desc" type="text" id="desc" /></td>
                </tr>
                <tr>
                    <td height="41">Documents</td>
                    <td><input name="img" type="file" id="img" /></td>
                </tr>
                <tr>
                    <td height="55">&nbsp;</td>
                    <td><input name="btn" type="submit" id="btn" value="Add Circular" />
                        <input type="reset" name="Submit2" value="Reset" /></td>
                </tr>
            </table>

            <%
                try {

                    String name = "";
                    String year1 = "";
                    String depart = "";
                    String sem = "";
                    String desc = "";
                    String fileName = "";
                    String fileSize = "";
                    String ftype = "";

                    String ImagePath = "";
                    boolean isMultipart = FileUpload.isMultipartContent(request);

                    if (!isMultipart) {
                        // request.getRequestDispatcher("admin_furniture_details.jsp").forward(request, response);
                        return;
                    }

                    DiskFileUpload upload = new DiskFileUpload();

                    List items = upload.parseRequest(request);

                    Iterator itr = items.iterator();

                    while (itr.hasNext()) {

                        FileItem item = (FileItem) itr.next();

                        if (item.isFormField()) {

                            String fieldName = item.getFieldName();

                            if (fieldName.equals("name")) {
                                name = item.getString();
                            }
                            if (fieldName.equals("year")) {
                                year1 = item.getString();
                            }
                            if (fieldName.equals("depart")) {
                                depart = item.getString();
                            }
                            if (fieldName.equals("sem")) {
                                sem = item.getString();
                            }
                            if (fieldName.equals("desc")) {
                                desc = item.getString();
                            }

                        } else {

                            File f = new File(config.getServletContext().getRealPath("/") + "upload/");
                            if (f.exists() == false) {
                                f.mkdir();
                            }
                            File fullFile = new File(item.getName());
                            File fileType = new File(item.getContentType());

                            // ftype=""+fileType.getName();
                            double filesize = item.getSize();
                            double fs1 = filesize / (1024 * 1024);
                            File savedFile = new File(getServletContext().getRealPath("/") + "upload/", fullFile.getName());

                            item.write(savedFile);
                            fileName = fullFile.getName();
                            //fileSize=""+savedFile.length();

                            ResultSet ns = stmt.executeQuery("select max(id) as maxid from circular");
                            ns.next();
                            int id1 = ns.getInt("maxid");
                            int id2 = id1 + 1;

                            String qq = "insert into circular values('" + id2 + "','" + name + "','" + depart + "','" + sem + "','" + desc + "','" + year1 + "','" + fileName + "','" + rdate + "','0')";
                            int n = stmt.executeUpdate(qq);
                            if (n == 1) {
            %>
            <script language="javascript">
                alert("Circular Add Successfully...");
                window.location.href = "it_home.jsp"
            </script>

            <%
            } else {
            %>
            <script language="javascript">
                alert("FAILED");
            </script>

            <%
                            }
                            // response.sendRedirect("admin_upload.jsp");

                        }
                    }

                } catch (Exception e) {
                    out.print(e.getMessage());
                }
            %>    
        </form>


          <%@include file="footer.jsp" %>
    </body>
</html>