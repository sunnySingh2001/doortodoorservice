<%@page import="java.sql.*" %>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <title>Edit ITEM</title>
    </head>
    <body> 
        <%! 
            String item_num;
            String cate;
            
            String items;
            String descrip;
            
            String unit;
            String brand;
            String price;
        %>
 <%
        Class.forName("oracle.jdbc.driver.OracleDriver");
        item_num=request.getParameter("x");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
        String sql = "select * from ITEMS where itemno="+item_num+"";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
        if(rs.next()) {
            descrip=rs.getString("description");
            cate = rs.getString("Category");
            unit=rs.getString("Unit");
            brand=rs.getString("Brand");
            price=rs.getString("Price");
            
        }
 %>
    <center>
         <%
         
         String status=request.getParameter("status");
         if(status!=null)
         {
         
         %>
         <b style="color:black;background-color: wheat;font-size:25px; margin:auto;border-radius:5px;"><%=status%></b>
         
         <%
         
         }
         %>
        <form action="edit_item">
            
            <input type="hidden" name="itemno_field" value="<%=item_num%>">
        <h1>Edit ITEM</h1>
        <table>
            
            <br><br>
            <tr>
                <td><b>Item_No:</b></td>
                <td><%=item_num%></td>
            </tr>
            <tr>
                <td><b>Description:</b></td>
                <td><input type="text" class="form-control" name="description_field" value="<%=descrip%>" required="required"></td>
            </tr>
  
            <br><br>
            <tr>
                <td><b>Category:</b></td>
                <td><input type="text" class="form-control" name="category_field"value="<%=cate%>" required="required"></td>
            </tr>
         <br><br>
            <tr>
                <td><b>Unit:</b></td>
                <td><input type="text" class="form-control" name="unit_field" value="<%=unit%>" required="required"></td>
            </tr>
           <br><br>
            <tr>
                <td><b>Brand:</b></td>
                <td><input type="text" class="form-control" name="brand_field" value="<%=brand%>" required="required"></td>
            </tr>
           
            <br><br>
            <tr>
                <td><b>Price:</b></td>
                <td><input type="text" class="form-control" name="price_field" value="<%=price%>" required="required"></td>
            </tr>
            <tr>
                <td></td> 
                <td><br><br><input type="submit" class="btn btn-success" name="submit" value="Edit" style="cursor:pointer;"></td>
            </tr>
        </table>
            
            
           
        </form>
             <li style="margin-left:70px;list-style: none"> <div style=""><button type="submit" style="background: black;color:white;width:80px;text-decoration: none;border-radius: 5px;" ><a href="item_management.jsp" style="color:white;">Back</a></button></div>
                          </li>
    </center>
    </body>
</html>