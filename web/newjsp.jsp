<%-- 
    Document   : newjsp
    Created on : Jul 11, 2019, 10:17:54 PM
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
    <body style='background-image:url(pic.jpg);background-repeat:no-repeat;width:100%;height:100%' >
        <center>
         <form action="" method="get">
               <input type="text" class="form control" name="q" placeholder="search-here">
       
        <br><table border="1" width="23%">
            <tr style="background-color:white;font-weight: bold;">
            <td  width="2%">name</td>
           <td width="5%">mail</td>
           <td width="4%">contact</td>
           <td width="2%">credits</td>
            </tr>
        </table>
           <center>   
                   
 

        
        <%
            
       try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            ResultSet res=null;
        
            Statement stat =conn.createStatement();
            String query=request.getParameter("q");
            String data;
            if(query!=null){
            data="select * from data_table where name like '%"+query+"%' or mail like '%"+query+"%' or contact like '%"+query+"%'or credits like '%"+query+"%' ";   
            }
            else{
                data="select * data_table order by name";
            }
            res=stat.executeQuery(data);
            while(res.next()){
                %>
    <tr>
    <td><%=res.getString("name")%></td>
    <td><%=res.getString("mail")%></td>
    <td><%=res.getString("contact")%></td>
    <td><%=res.getString("credits")%></td>
    </tr>
    
    <%
        }
    }
    
              catch(Exception ex)
                      
           {
               
              
                        
           }  


  
  %>

                 
  </form>     
        </center>
                    
    </body>
</html> 
