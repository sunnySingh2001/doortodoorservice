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
<h3 align="center">Search Agent</h3>
<br><br><br>
	<div class="row">
    	<div class="col-md-3"></div>
        <div class="col-md-6">
        	<form class="form-horizontal" role="form" method="get" action="search_agent_detail.jsp" enctype="multipart/form-data">
                
                 
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Search Agent Type</label>
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
                     <!-- <option value="gram">gram</option>
                      <option value="number">number</option> -->
                       
                      
                    </select>
                 </div>
                  <div class="col-sm-3"></div>
                </div>
                    
            
                    
                <div class="form-group">        
                  <div class="col-sm-offset-4 col-sm-2">
<!--                      <input type="button" value="Search Availability" onclick="submitForm()" />
                      <script>
	function submitForm()
	{		
		document.f1.action='search_agent_detail.jsp';
		document.f1.submit();		
	}
</script>-->
<!--<a href='search_agent_detail.jsp'>
    <button type="submit"><b>Search</b></button>
</a>-->
</form>
<!--<a href="search_agent_detail.jsp" style="background:white;color:black;font-weight:bold;border-radius: 10px;">search</a>-->
<!--                      <input type="submit" value="Seach Availability" class="active"<a href="search_agent_detail.jsp"></a>-->
                <input type="submit" class="btn btn-default" name="ADD" value="Seach Availability" style="cursor:pointer;" />
                  </div>
                </div>
            </form>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
</body>
</html>   </div>