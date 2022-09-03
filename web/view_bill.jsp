<%@page import="java.sql.*" %>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <title>Order details</title>
    </head>
    <body> 
        
    
  <center><table border ="1" width="500" cellspacing="3" cellpadding="50">     
            <br><br><br>

       <%! 
            String id_var;
            String bill_type_var;
        %>
 <%
     
     id_var=request.getParameter("s1");
    bill_type_var=request.getParameter("s2");
//     brand_var=request.getParameter("s3");
   
     
       Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
     // String sql="select * from items where BRAND='"+brand_var+"'";
      Statement stmt=con.createStatement();
//      ResultSet rs=stmt.executeQuery(sql);
//      if(rs.next())
//      {
//          price_var=rs.getString("price");
//            
//      }
   %>
        
   <form action="view_bill_details_pay.jsp">
       <table align="center">
           
           <tr>
               <td>MEMBER ID:</td>
               <td><input type="text" name="mid" value="<%=id_var%>" onfocus="this.blur()"></td>
           </tr> <br>
           <br>
           <br>
          
           <tr><td>BILL TYPE</td>
               <td>
                    <select name="billtype" id="unit" class="form-control">
                      <option value="0">select</option>
                    
                      <option value="Electricity bill">Electricity bill</option>
                      <option value="Water bill">Water bill</option>
                      <option value="Phonre bill">Phone bill</option>
                     
                    </select>
               </td>
           </tr><br><br>
                  <tr>
                <td colspan="2"><input type="submit" value="view details" ></td>
           </tr>
           
               
           
       </table>
<!--           <br><br><br>
           <input type="submit" class="btn btn-default" name="ADD" value="Seach Availability" style="cursor:pointer;" />
       -->
   </form>
   
  
   
      
 
        
     
  </center>
</body>
</html>



