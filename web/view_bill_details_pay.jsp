<%@page import="java.sql.*" %>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <title>Order details</title>
        <style>
            body
            {
                background-color: lightsteelblue;
            }
            table tr td
            {
               font-weight:bold;
               font-size:20px;
               padding:10px;
               
            }
            table tr td input
            {
                border-radius: 5px;
            }
            
        </style>
    </head>
    <body> 
        
    
  <center><table border ="1" borderspacing="40" width="500" cellspacing="3" cellpadding="50">     
            <br><br><br>

       <%! 
            String id_var;
            String bill_type_var;
            String bill_no_var;
            String date_var;
            String amount_var;
            String phone_var;
            
        %>
 <%
     
     id_var=request.getParameter("mid");
     bill_type_var=request.getParameter("billtype");
    // brand_var=request.getParameter("s3");
   
     
       Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
      String sql="select * from billpayments where MEMBER_ID='"+id_var+"' and TYPE='"+bill_type_var+"' ";
      Statement stmt=con.createStatement();
      ResultSet rs=stmt.executeQuery(sql);
      if(rs.next())
      {
          bill_no_var=rs.getString("bill_no");
          date_var=rs.getString("last_payment");
          amount_var=rs.getString("amount");
          phone_var=rs.getString("phone");
            
      }
   %>
        
   <form action="view_bill_details_pay_done.jsp">
       
       <div>
           <tr>
               <td>Member id:</td>
               <td><input type="text" name="memid" value="<%=id_var%>" onfocus="this.blur()"></td>
           </tr>
       </div>
           <div>
           <tr>
               <td>Bill no:</td>
               <td><input type="text" name="desc" value="<%=bill_no_var%>" readonly></td>
           </tr>
           </div>
           <div>
           <tr>
               <td>Bill type:</td>
               <td><input type="text" name="brand" value="<%=bill_type_var%>" readonly></td>
           </tr>
           </div>
<!--           <tr>
               <td>last date of payment:</td>
               <td><input type="text" name="date"  id="price" value="<%=date_var%>" readonly> </td>
           </tr>-->
          <div>
           <tr>
               <td>Amount:</td>
               <td><input type="text" name="price"  id="price" value="<%=amount_var%>" readonly> </td>
           </tr>
          </div>
           <div>
           <tr>
               <td>Consumer no:</td>
               <td><input type="text" name="phone number"  id="price" value="<%=phone_var%>" readonly> </td>
           </tr>
           </div>
          
          
           <div>
            <tr>
                <td></td><td colspan="2"><input type="submit" value="Pay" ></td>
           </tr>
           </div>
   </form>
   
  
   
      
 
        
      </table>
  </center>
</body>
</html>