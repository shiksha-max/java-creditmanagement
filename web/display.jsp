<%-- 

    Document   : display.jsp
    Created on : Jul 7, 2019, 2:44:26 AM
    Author     : hp
--%>

<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>display Page</title>
    </head>
    <style>
                  .uppertheme
        {
            
            
            font-size:22px;
            font-family: algerian;
            color:white;
           }
       
   .uppertheme:hover
         {
        background:grey;
            color:white;
            border: solid;
       
        }


  

        </style>
    <body style='background-image:url(pic.jpg);background-repeat:no-repeat;width:100%;height:100%'>
    <center>
        <table wridth="20%" border="2">
            <tr align="center" bgcolor="white">
                <td width="5%" class="uppertheme"><a href="homepage.jsp">Home</td>
                <td width="5%" class="uppertheme"><a href="newjsp.jsp">view information</td>
                <td width="5%" class="uppertheme"><a href="tranfer.jsp">Transfer</td>
            </table>
        
        <br><table border="5">
            <tr style="background-color:white;font-weight: bold; ">
                <td>name</td>
                <td>mail</td>
                <td>contact</td>
                <td>credits</td>
                
                </tr>
        <%
                    
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
           Statement st=conn.createStatement();
            
            String qry="select * from data_table";
            ResultSet rs=st.executeQuery(qry);
            
           while(rs.next())
           {
               String name=rs.getString("name");
     String mail=rs.getString("mail");
     String cont=rs.getString("contact");
     String cre=rs.getString("credits");
     
               %>
               <tr>
                   <td><%=name%></td>
                   <td><%=mail%></td>
                   <td><%=cont%></td>
                   
                   <td><%=cre%></td>
                  
                  
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

