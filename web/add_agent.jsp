<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body style="background-color: lavender;">
<div class="container">
    <br><br>
<h3 align="center">Add AGENT</h3>
<br><br><br>
	<div class="row">
    	<div class="col-md-3"></div>
        <div class="col-md-6">
            <%
         
         String status=request.getParameter("status");
         if(status!=null)
         {
         
         %>
         <b style="color:red"><%=status%></b>
         
         <%
         
         }
         %>
        	<form class="form-horizontal" role="form" method="get" action="add_agent" enctype="multipart/form-data">
                
                  <div class="form-group">
                    <label class="control-label col-sm-4" for="email">NAME:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="name_field" id="ID" placeholder="Enter Agent's Name" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                   <div class="form-group">
                    <label class="control-label col-sm-4" for="email">PLOT NO:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="plotno_field" id="ID" placeholder="Enter PLOT NO" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                   <div class="form-group">
                  <label class="control-label col-sm-4" for="email">LANE:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="lane_field" id="ID" placeholder="Enter LANE NO" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">AREA:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="area_field" id="ID" placeholder="Enter AREA" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">CITY:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="city_field" id="ID" placeholder="Enter CITY" required="required">
                  </div>
                    </div>
                   <div class="form-group">
                  <label class="control-label col-sm-4" for="email">PHONE NO:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="phone_field" id="ID" placeholder="Enter Phone No" required="required">
                  </div>
                   </div>
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Type</label>
                  <div class="col-sm-5">
                    <select name="type_field" id="type" class="form-control">
                      <option value="0">select</option>
                      <option value="Carpenter">Carpenter</option>
                      <option value="Plumber">Plumber</option>
                      <option value="Electrician">Electrician</option>
                     <!-- <option value="Dairy"></option>
                       <option value="Poultry">Poultry</option>
                        <option value="Vegetable">Vegetable</option> -->
                      
                    </select>
                 </div>
                  <div class="col-sm-3"></div>
                </div>
                    
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Proficiency</label>
                  <div class="col-sm-5">
                    <select name="proficiency_field" id="unit" class="form-control">
                      <option value="0">select</option>
                      <option value="Excellent">Excellent</option>
                      <option value="Moderate">Moderate</option>
                     
                      
                    </select>
                 </div>
                  <div class="col-sm-3"></div>
                </div>
                    
                  
                    
                    
                <div class="form-group">        
                  <div class="col-sm-offset-4 col-sm-2" >
                    <input type="submit" class="btn btn-default" name="ADD" value="add" style="cursor:pointer; background-color: black;color:white;" />
                  </div>
                </div>
<!--                  <div class="col-sm-offset-4 col-sm-2">
                    <input type="submit" class="btn btn-default" name="ADD" value="HOme" style="cursor:pointer;" />
                  </div>-->
            </form>
<!--                <div>  <a href="admin_home.html">Home</a></div>-->
<div style="margin-left: 300px;"><button type="submit" style="background-color: black;color:white;" ><a href="admin_home.html" style="color:white;">Home</a></button></div>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
</body>
</html>