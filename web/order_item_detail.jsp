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
            String category_var;
            String desc_var;
            String brand_var;
            String price_var;
            String quantity_var;
            String bill_var;
        %>
 <%
     
     category_var=request.getParameter("s1");
     desc_var=request.getParameter("s2");
     brand_var=request.getParameter("s3");
   
     
       Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
      String sql="select * from items where BRAND='"+brand_var+"'";
      Statement stmt=con.createStatement();
      ResultSet rs=stmt.executeQuery(sql);
      if(rs.next())
      {
          price_var=rs.getString("price");
            
      }
   %>
        
   <form action="order_item_detail">
          <% 
        
         
         
         String status=request.getParameter("status");
         if(status!=null)
         {
         
         %>
         <b style="color:black;font-size:30px;"><%=status%></b>
         
         <%
         
         }
         %>
       <table align="center">
           
           <tr>
               <td>CateGory:</td>
               <td><input type="text" name="cate" value="<%=category_var%>" onfocus="this.blur()"></td>
           </tr>
           <tr>
               <td>Description:</td>
               <td><input type="text" name="desc" value="<%=desc_var%>" readonly></td>
           </tr>
           <tr>
               <td>Brand:</td>
               <td><input type="text" name="brand" value="<%=brand_var%>" readonly></td>
           </tr>
           <tr>
               <td>Price:</td>
               <td><input type="text" name="price"  id="price" value="<%=price_var%>" readonly> </td>
           </tr>
           <tr>
               <td>Quantity:</td>
               <td><input type="text" name="quantity" id="quantity" value="" oninput="calculate();"></td>
           </tr>
           <tr>
               <td>Total price:</td>
               <td><input type="text" name="tot_price" value="" id="result" readonly></td>
           </tr>
          
            <tr>
                <td colspan="2"><input type="submit" value="Placed Order" ></td>
                <td colspan="2"  ><a link href="order_item.jsp"style="margin-right: 50px;">Order More</td>
                <td colspan="2"><a link href="customer_home.jsp">Home</td>
           </tr>
           
       </table>
         
       
   </form>
   
   <script>


    function calculate()
    {
        var myBox1 = document.getElementById('price').value; 
        var myBox2 = document.getElementById('quantity').value;
        var result = document.getElementById('result'); 
        var myResult = myBox1 * myBox2;
          document.getElementById('result').value = myResult;

    }
</script>
   
      
 
        
      </table>
  </center>
</body>
</html>