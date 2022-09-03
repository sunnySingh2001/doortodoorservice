<%@page import="java.sql.*" %>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <title>Order details</title>
        <style>
            table tr td
            {
                padding:5px;
                font-size:20px;
                font-weight:bold;
                font-style: cursive;
                border-radius: 8px;
            }
        </style>
    </head>
    <body style="background-color: lightsteelblue;"> 
        
    
  <center><table border ="1" width="500" cellspacing="3" cellpadding="50">     
            <br><br><br>

       <%! 
            String id_var;
            String bill_type_var;
        %>
 <%
     
     id_var=request.getParameter("s1");
   // bill_type_var=request.getParameter("s2");
//     brand_var=request.getParameter("s3");
   
     
       Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
      String sql="select * from BILLPAYMENTS where MEMBER_ID='"+id_var+"' AND STATUS=0";
      Statement stmt=con.createStatement();
      ResultSet rs=stmt.executeQuery(sql);
      
      
   %>
        
   <form action="view_bill_details_pay.jsp">
       <table align="center">
           
           <tr>
               <td>MEMBER ID:</td>
               <td><input type="text" name="mid" value="<%=id_var%>" onfocus="this.blur()" style=" border-radius: 8px;"></td>
           </tr> <br>
           <br>
           <br>
           
           <tr><td>BILL TYPE</td>
               <td>
                   <select name="billtype" id="unit" class="form-control" style=" border-radius: 8px;">
                      <option value="0">select</option>
           <%
           while(rs.next())
           {
            bill_type_var=rs.getString("type");
            
      
           %>
          
           
                    
                      <option  ><%=bill_type_var%></option>
                      
                     
                    
           
           <%
             }
           %>
           </select>
               </td>
           </tr><br><br>
           
           
            <tr>
                <td></td>  <td colspan="2"><input type="submit" value="view details" style=" border-radius: 8px;"></td>
           </tr>
           
               
           
       </table>
<!--           <br><br><br>
           <input type="submit" class="btn btn-default" name="ADD" value="Seach Availability" style="cursor:pointer;" />
       -->
   </form>
   
  
   
      
 
        
     
  </center>
</body>
</html>



