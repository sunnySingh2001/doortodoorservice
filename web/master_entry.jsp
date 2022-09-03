<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>
<div class="container">
    <br><br>
<h3 align="center">Add AGENT</h3>
<br><br><br>
	<div class="row">
    	<div class="col-md-3"></div>
        <div class="col-md-6">
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
                   <div class="form-group">
                  <label class="control-label col-sm-4" for="email">PHONE NO:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="phone_field" id="ID" placeholder="Enter Phone No" required="required">
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
                    
                  <!--  <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Brand</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="brand" id="brand" placeholder="Brand" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Price</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="price" id="price" placeholder="Price" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div> --> 
                    
                <!--<<div class="form-group">
                  <label class="control-label col-sm-4" for="email">Category</label>
                  <div class="col-sm-5">
                    <select name="district" id="district" class="form-control">
                      <option value="0">select</option>
                      <option value="1">kg</option>
                      <option value="1">litre</option>
                      <option value="1">gram</option>
                      <option value="1">pc</option>
                       <option value="1">Poultry</option>
                        <option value="1">Vegetable</option>
                      
                    </select>
                 </div>
                  <div class="col-sm-3"></div>
                </div>-->
                    
                    
                  <!--  <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Pincode:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="pin_code" id="pin_code" placeholder="Enter Pin Code" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    
                    
                     <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Pincode:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="pin_code" id="pin_code" placeholder="Enter Pin Code" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                     -->
                    
                    
                <div class="form-group">        
                  <div class="col-sm-offset-4 col-sm-2">
                    <input type="submit" class="btn btn-default" name="ADD" value="add" style="cursor:pointer;" />
                  </div>
                </div>
            </form>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
</body>
</html>