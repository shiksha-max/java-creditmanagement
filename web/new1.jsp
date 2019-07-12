<%-- 
    Document   : new1
    Created on : Jul 12, 2019, 6:06:01 AM
    Author     : hp
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
         <%
            try
        {

           String name=request.getParameter("name");
            String sel=request.getParameter("select");
            String amt=request.getParameter("amount");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("insert into credit_table values(?,?,?)");
            
            st.setString(1,name);
            st.setString(2,sel);
             st.setString(3,amt);
            st.executeUpdate();
            response.sendRedirect("tranfer.jsp");
           
        }catch(Exception ex)
        {
out.println(ex);
        }
            
                     


%>
         
    </body>
</html>
