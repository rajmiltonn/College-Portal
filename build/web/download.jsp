
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page  import="java.io.FileInputStream" %>
<%@ page  import="java.io.BufferedInputStream"  %>
<%@ page  import="java.io.File"  %>
<%@ page import="java.io.IOException" %>
<%

BufferedInputStream buf=null;
   ServletOutputStream myOut=null;
try{

   
   String filename=request.getParameter("fname");
  
myOut = response.getOutputStream();




     File myfile =new File(getServletContext().getRealPath("/") +"upload/"+filename+".doc");
  
///// decode end    
     //set response headers
      response.setContentType("application/octet-stream");
     
     response.addHeader("Content-Disposition","attachment; filename="+filename);


     response.setContentLength((int) myfile.length());
     
     FileInputStream input = new FileInputStream(myfile);
     buf = new BufferedInputStream(input);
     int readBytes = 0;

     //read from the file; write to the ServletOutputStream
     while((readBytes = buf.read()) != -1)
       myOut.write(readBytes);

} catch (IOException ioe){
     
        throw new ServletException(ioe.getMessage( ));
         
     } finally {
         
     //close the input/output streams
         if (myOut != null)
             myOut.close( );
          if (buf != null)
          buf.close( );
         
     }

     
%>