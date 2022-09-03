<%@page import="java.util.Random"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
     <script src="datetimepicker_css.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>
    <%
        String memberid=(String)session.getAttribute("userid");
        
        Random n=new Random();
        int code=n.nextInt();
        String billno=Integer.toHexString(code);
        billno=billno.substring(0,6);
       
        %>
<div class="container">
    <br><br>
<h3 align="center">Pay Bill</h3>
<br><br><br>
	<div class="row">
    	<div class="col-md-3"></div>
        <div class="col-md-6">
        	<form class="form-horizontal" role="form" method="get" action="pay_bill" enctype="multipart/form-data">
                    
                      <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Member ID:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="memberid" id="memberid" placeholder="Member id" value="<%=memberid%>" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Bill Number:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="billno" id="items" value="<%=billno%>" placeholder="Enter bill no" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                  
                
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Bill Type:</label>
                  <div class="col-sm-5" >
                    <select name="billtype" id="unit" class="form-control" name="billtype">
                      <option value="0">select</option>
                    
                      <option value="Electricity bill">Electricity bill</option>
                      <option value="Water bill">Water bill</option>
                      <option value="Phone bill">Phone bill</option>
                     
                    </select>
                 </div>
                  <div class="col-sm-3"></div>
                </div>
                    
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Last date of payment:</label>
                  <div class="col-sm-5">
                    <input type="text"  id="demo1" class="form-control" name="date" id="brand" placeholder="Date" required="required">
                   
        <img src="images2/cal.gif" onclick="javascript:NewCssCal('demo1','ddMMMyyyy')" style="cursor:pointer"/>
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Amount to be paid:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="amount" id="price" placeholder="Price" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    
                <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Phone No:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="phone" id="price" placeholder="Enter member phone no" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    
                    
                <div class="form-group">        
                  <div class="col-sm-offset-4 col-sm-2">
                    <input type="submit" class="btn btn-default" name="submit" value="Pay" style="cursor:pointer;" />
                  </div>
                </div>
            </form>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
</body>
</html>