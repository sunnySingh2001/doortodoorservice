<%-- 
    Document   : add_category.jsp
    Created on : 16 Dec, 2021, 5:37:51 PM
    Author     : hp
--%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body style="font-family:Courier New; font-size:17px; ">
    <div class="container" style="border:10px solid black;border-radius: 18px;box-shadow: 15px 15px grey ;background:#077b8a ;height:600px;width:600px;margin-top:70px;margin-bottom: 60px;shadow:30px;">
    <br><br>

<h3 align="center" style="font-weight:bold;font-size:50px;font-family:Courier New;background: white;border-radius: 20px;height:80px;padding-top:15px;width:400px;margin:auto;">Add ITEM</h3>
<br><br><br>
	<div class="row">
    	<div class="col-md-3"></div>
        <div class="col-md-6" style="font-size:20px;font-weight: bold;">
        	<form class="form-horizontal" role="form" method="get" action="add_item" enctype="multipart/form-data">
                
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Category</label>
                  <div class="col-sm-5">
                    <select name="category" id="category" class="form-control">
                      <option value="0">select</option>
<!--                      <option value="1">Grocery</option>
                      <option value="1">Medicine</option>
                      <option value="1">Stationary</option>
                      <option value="1">Diary</option>
                       <option value="1">Poultry</option>
                        <option value="1">Vegetable</option>-->

                       <%
                       Class.forName("oracle.jdbc.driver.OracleDriver");
                       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
                       String sql1="select * from category";
                       String cat;
                       Statement st=con.createStatement();
                       ResultSet rs=st.executeQuery(sql1);
                          
                         while(rs.next())
                         {
                           // rs.next();
                           cat=rs.getString("product_category");
                           
                           
                    %>
                      
                    <option value="<%=cat%>"><%=cat%></option>
                    
                    <% }   
                    %>

                      
                    </select>
                 </div>
                  <div class="col-sm-3"></div>
                </div>
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email" style="font-size:20px;">Item Description</label>
                  <div class="col-sm-5">
                      <input type="text" class="form-control" name="items" id="items" placeholder="Items Name" required="required" style="width:200px;">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Unit</label>
                  <div class="col-sm-5">
                    <select name="unit" id="unit" class="form-control">
                      <option value="0">select</option>
                      <option value="1">kg</option>
                      <option value="1">litre</option>
                      <option value="1">gram</option>
                      <option value="1">number</option>
                       
                      
                    </select>
                 </div>
                  <div class="col-sm-3"></div>
                </div>
                    
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="text">Brand</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="brand" id="brand" placeholder="Brand" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="text">Price</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="price" id="price" placeholder="Price" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    
                
                    
                    
                <div class="form-group">        
                  <div class="col-sm-offset-4 col-sm-2">
                      <ul style="display: flex;">
                          <li style="margin-right: 80px;"> <input type="submit" class="btn btn-default" name="submit" value="add" style="cursor:pointer;background:black;color:white;" />
                          </li>
                          <li style="margin-left:40px;"><button type="submit" style="background: black;color:white;width:100px;text-decoration: none;border-radius: 5px;" ><a href="add_item.jsp" style="color:white;font-size:15px;">Add More</a></button></div>
                          </li>
                          <li><button type="submit" style="background: black;color:white;width:100px;text-decoration: none;border-radius: 5px;" ><a href="item_management.jsp" style="color:white;font-size:15px;">Back</a></button></div>
                          </li>
                </div>
                </div>
                     <%
         
         String status=request.getParameter("status");
         if(status!=null)
         {
         
         %>
         <b style="color:black;background-color: wheat;font-size:25px; margin:auto;border-radius:5px;text-align: center;float:left;"><%=status%></b>
         
         <%
         
         }
         %>
            </form>
                    
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
</body>
</html>
