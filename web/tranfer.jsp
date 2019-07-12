
<%-- 
    Document   : tranfer
    Created on : Jul 12, 2019, 3:54:07 AM
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
   <style>
    .registertheme
        {
            font-size:50px;
            font-family:algerian;
        }
        </style>
     <body style='background-image:url(pic.jpg);background-repeat:no-repeat;width:100%;height:100%'>
         
           <br/> <marquee ><font color="white" family="algerial" size="50px">TRANSFER BECOME EASY!!!!!!!</font></marquee>
         
         <form action="new1.jsp">
      <table align="center" border="0" cellspacing="10" cellpadding="5">
           <tr bgcolor="black">
        
        <td colspan="2s"><font color="white"><b>TRANFER AMOUNT</b></font></td>
    </tr>

    
    <tr>
        <td class="registertheme">Name</td>
        <td><input type="text" name="name"></td>
    </tr>
        
    <tr>
        <td class="registertheme">select user to tranfer</td>
        <td><input type="text" name="select">     
    </tr>
    
    <tr>
        <td class="registertheme">Amount</td>
        <td><input type="text" name="amount"></td>
    </tr>
    <tr>
        <td>
            <input type="submit" value="Submit">
            <input type="reset" value="Clear">
        </td>
    </tr>
</table>
             </form>
         
      
         
         

    </body>
</html>

