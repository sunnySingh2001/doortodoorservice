<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.util.Random"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<html>
    <head>
        <title>The Presidency</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </head>
    
    
    <body >
        
        <%! 
            String id_var;
            String amount_var;
        %>
        <%
            
        String memberid=(String)session.getAttribute("userid");
        
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
        <button type="submit" style="background: black;color:white;width:100px;text-decoration: none;border-radius: 5px;" ><a href="customer_home.jsp" style="color:white;font-size:15px;">Back</a></button></div>
             </center>       
        
    <center>
        <form class="form-horizontal" role="form" method="get" action="recharge_amount" enctype="multipart/form-data" style="margin-top: 250px;">
                    
                   
                    
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="email" style="font-weight: bold;font-size: 30px;">Enter Recharge Amount:</label>
                  <div class="col-sm-5"><br>
                    <input type="text" class="form-control" name="amount" id="price" placeholder="Price" required="required" style="font-weight: bold;font-size: 30px;">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
          <br><br>
                
                    
                    
                <div class="form-group">        
                  <div class="col-sm-offset-4 col-sm-2">
                    <input type="submit" class="btn btn-default" name="submit" value="Recharge" style="cursor:pointer;font-size: 25px;background-color: black;color:white;border-radius: 5px;" />
                  </div>
                </div>
            </form>
        
    </center>
              
        </div>
    </body>
</html>
