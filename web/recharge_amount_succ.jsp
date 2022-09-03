<%-- 
    Document   : order_item_detail_succ
    Created on : 18 Jan, 2022, 6:39:54 PM
    Author     : hp
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
        String memberid=(String)session.getAttribute("userid");
        %>
        
        
        <%! 
            String id_var;
            String amount_var;
        %>
 <%
     
     //id_var=request.getParameter("member_id");
   // bill_type_var=request.getParameter("s2");
//     brand_var=request.getParameter("s3");
   
     
       Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
      String sql="select * from recharge_amt where MEMBER_ID='"+memberid+"'";
      Statement stmt=con.createStatement();
      ResultSet rs=stmt.executeQuery(sql);
      
      
   %>
        
         <%
           while(rs.next())
           {
            amount_var=rs.getString("amount");
            
           }
           %>
          
           
                    
                            
       <h1 ><center ><b>Thank You For recharging, your balance is now<%=amount_var%></b></h1>
        <button type="submit" style="background: black;color:white;width:100px;text-decoration: none;border-radius: 5px;" ><a href="recharge_amount.jsp" style="color:white;font-size:15px;">Back</a></button></div>
             </center>       
        
        
    </body>
</html>