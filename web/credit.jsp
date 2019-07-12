<%-- 
    Document   : credit.jsp
    Created on : Jul 12, 2019, 12:00:53 PM
    Author     : hp
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center>
    <body style='background-image:url(pic.jpg);background-repeat:no-repeat;width:100%;height:100%'>
        
             <table align="center" border="0" cellspacing="10" cellpadding="5">
           <tr bgcolor="black">
        
        <td colspan="2s"><font color="white"><b>VIEW CREDITS DETAIL</b></font></td>
    </tr>
   
    
        <br><table border="4" width="16%">
            <tr style="background-color:white;font-weight: bold; ">
                <td>name</td>
                <td>Select</td>
                <td>Amount</td>
                
                
                </tr>
        <%
                    
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
           Statement st=conn.createStatement();
            
            String qry="select * from credit_table";
            ResultSet rs=st.executeQuery(qry);
            
           while(rs.next())
           {
               String name=rs.getString("name");
     String sel=rs.getString("select");
     String amt=rs.getString("amount");
    
     
               %>
               <tr>
                   <td><%=name%></td>
                   <td><%=sel%></td>
                   <td><%=amt%></td>
                   
                   
                  
                  
                   </tr>
               
            <%
           }
            }catch(Exception ex){
       out.println(ex);
         }

           

          %>  
          </table>
          </center>
       
     </body>
</html>
