
<html>
<head>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/bootstrap.min.css">
<!--<style>
    .a
    {
        display: inline-block;
        padding-top: 40px;
        font-weight: bold;
        color:white;
        list-style: none;
        font-size: 20px;
        margin-left: 50px;
    }
    .a :hover
    {
        background: white;
    }
</style>
-->
</head>
<body style="background:#a2d5c6;font-family: cursive;" >
   <!-- <div style="background: black;height: 150px;margin-top:0px;">
        <h2 style="color:white;font-weight: bold;margin-left:500px;font-size:50px;">Help At DoorStep</h2>
        <ul class="anu">
            
            <li  class="a" ><a href="index.html">Home</a></li>
            <li class="a" ><a href="">About us</a></li>
            <li class="a"><a href="">Help</a></li>
        </ul>
    </div>
   -->
 
    
    <div style="background: black;height: 100px;margin-top:0px;width:1545px;float: left;">
        <center> <ul>
      
            <li class="an" style="font-size: 40px;color:white;list-style: none;font-weight:bold;border-radius: 10px;height:50px;width: 500px;margin-top: 20px;padding-top: 5px;padding-right:20px;">Add Category Here</li>
                </ul>
    
    
    
    
  <!--  <div> <h4  style="font-weight: bold;font-size:40px;width:1900px;height:150px;padding-top:30px;border-radius:10px;background: black;color:white;padding-left: 70px;" >Add Category Below !!</h4></div>
    <h3 align="center" style="font-weight: bold;font-size:40px;background: white;width:600px;margin:auto;height:100px;padding-top:30px;border-radius:10px;">Add Category</h3>-->
<br><br><br>
	<div class="row">
    	<div class="col-md-3"></div>
        <div class="col-md-6">
        	<form class="form-horizontal" role="form" method="get" action="addcategory1">
                <div class="form-group" style="margin-top: 70px;">
                  <label class="control-label col-sm-4" for="email"style="font-weight: bold; font-size:20px;margin-left: 50px;margin-top:0px; ">Category name :</label>
                  <div class="col-sm-5">
                      <input type="text" class="form-control" name="category" id="category_name" placeholder="Enter Category Name" required="required" style="height:50px;margin-top:0px;">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
              
                    
                    
                <div class="form-group">        
                  <div class="col-sm-offset-4 col-sm-2" style="margin-left:450px;margin-top: 50px;">
                      <ul style="display: flex;float:right;list-style: none;">
                          <li style=""><input type="submit" class="btn btn-default" name="submit" value="Add" style="cursor:pointer;background: black;color:white;width:80px;">
                          </li>
                          <li style="margin-left:70px;"> <div style=""><button type="submit" style="background: black;color:white;width:80px;text-decoration: none;border-radius: 5px;" ><a href="Addcategory.jsp" style="color:white;">Add More</a></button></div>
                          </li>
                          <li style="margin-left:70px;"> <div style=""><button type="submit" style="background: black;color:white;width:80px;text-decoration: none;border-radius: 5px;" ><a href="view_category.jsp" style="color:white;">Back</a></button></div>
                          </li>
                      </ul>
                  </div>
                </div>
            </form>
           
       
        </div>
         <div class="form-group">  
        <%
         
         String status=request.getParameter("status");
         if(status!=null)
         {
         
         %>
         <b style="color:black;font-size:30px; margin:auto;text-align: center;float:left;"><%=status%></b>
         
         <%
         
         }
         %>
         </div>
        <div class="col-md-3"></div>
    </div>
</div>
</body>
</html>