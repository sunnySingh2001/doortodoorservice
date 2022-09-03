
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.sql.*" %>
<html>
    <head>
        <title>The Presidency</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </head>
    
    
    <body style="background:lavender;">
        
        <table>
        <%
        String memberid=(String)session.getAttribute("userid");
        %>
        <%
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
        String sql = "select * from RECHARGE_AMT WHERE MEMBER_ID="+memberid+"";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
        %>
         <div><h1>view balance</h1></div><br><br>
         <tr><td>    <div><h1>your available balance is :</h1> </div></td></tr>
        <%
        while(rs.next()) {
            String no = rs.getString("AMOUNT");
            
%>
        %>
        
        
        
        
        
        
        
        
        
        
        
           
           
        <td> <div><%=no%></div></td>
           
        
            <%
        }
        %>
        
<!--        <div>
            <div><h1><a link href="recharge_amount.jsp">Recharge</a></h1></div><br><br>
            
           
        </div>-->
           
            <tr><td><div style="margin-left: 130px;margin-top: 40px;"><button type="submit" style="height:40px;width:100px;color:white;font-size:15px;font-weight:19px;background: black;border-radius: 5px;">Re charge</button></td></div></tr>
            </table>
<!--                <button type="submit" value="Log In" class="btn"></button>-->

          
              
        </div>
    </body>
</html>
