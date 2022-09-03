<%@page import="java.sql.*" %>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <title>Order details</title>
         <style>
            .anu{
                background: black;
                font-weight: bold;
                font-size: 25px;
                color:white;
                padding:10px;
            }
            .anu1
            {
                background:white ;
                    font-weight:bold;
                    color:grey;
            }
            table tr td 
            {
                text-decoration: none;
            }
            .an
            {
                display: inline-block;color:white;font-weight: bold;font-size:40px;margin-top:15px;
                font-family: cursive;
                
            }
           
        </style>
        
        
        
    </head>
    <body> 
        
    
  <center><table border ="1" width="500" cellspacing="3" cellpadding="50">     
            <br><br><br>
            
    
       <%! 
            String type_var;
            String proficiency_var;
            String agent_id_var;
            String name_var;
            String plot_no_var;
            String lane_var;
            String area_var;
            String city_var;
            String phone_no_var;
        %>
 <%
     
     type_var=request.getParameter("type_field");
     proficiency_var=request.getParameter("proficiency_field");
     //brand_var=request.getParameter("s3");
   
     
       Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
      String sql="select * from agent where type='"+type_var+"' and proficiency= '"+proficiency_var+"'";
      
      Statement stmt=con.createStatement();
      ResultSet rs=stmt.executeQuery(sql);
      
      %>
      
      <table  border ="1" width="500" cellspacing="0" cellpadding="20">
      <tr>
                <td class="anu" style=" "><b>AGENT_ID</b></td>
                <td class="anu" style=" "><b>NAME</b></td>
                <td class="anu" style=" "><b>PLOT_NO</b></td>
                <td class="anu" style=" "><b>LANE</b></td>
                <td class="anu" style=" "><b>AREA</b></td>
                <td class="anu" style=" "><b>CITY</b></td>
                <td class="anu" style=" "><b>PHONE_NO</b></td>
              
                
      </tr>
      <%
      while(rs.next())
      {
         // price_var=rs.getString("price");
          
           agent_id_var=rs.getString("agent_id");
            name_var=rs.getString("name");
             plot_no_var=rs.getString("plot_no");
            lane_var=rs.getString("lane");
             area_var=rs.getString("area");
            city_var=rs.getString("city");
          phone_no_var=rs.getString("phone_no");
            
      
   %>
        
   
      <tr>
            <td class="anu1" style=""><b><%=agent_id_var%></b></td>
            <td class="anu1" style=""><b><%=name_var%></b></td>
            <td class="anu1" style=""><b><%=plot_no_var%></b></td>
            <td class="anu1" style=""><b><%=lane_var%></b></td>
            <td class="anu1" style=""><b><%=area_var%></b></td>
            <td class="anu1" style=""><b><%=city_var%></b></td>
            <td class="anu1" style=""><b><%=phone_no_var%></b></td>
            
        </tr>
        <%
      }
      %>
   </table>
   




   
      
 
        
      
  </center>
</body>
</html>