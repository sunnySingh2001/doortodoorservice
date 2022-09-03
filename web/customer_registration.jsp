<html>
<head>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body style="background:#a2d5c6;">
    
    <img src="<img src="">
<div class="container">
    <br><br>
<h3 align="center" style="font-weight: bold;font-size:40px;background: white;width:500px;margin:auto;height:100px;padding-top:30px;border-radius:10px;"">Customer Registration</h3>
<br><br><br>
<div class="row">
    <div class="col-md-3"></div>
        <div class="col-md-6">
        <form class="form-horizontal" role="form" method="get" action="customer_reg" >
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">ID:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="id_field" id="ID" placeholder="Enter ID" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-4" for="email">NAME:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="name_field" id="ID" placeholder="Enter NAME" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                  <div class="form-group">
                  <label class="control-label col-sm-4" for="email">SPOUSE NAME:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="spouse_name_field" id="ID" placeholder="Enter Spouse Name" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">AGE:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="age_field" id="ID" placeholder="Enter AGE" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                   <div class="form-group">
                  <label class="control-label col-sm-4" for="email">SPOUSE AGE:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="spouse_age_field" id="ID" placeholder="Enter AGE" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">PHONE1:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="phone1_field" id="ID" placeholder="Enter PHONE NUMBER" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">PHONE2:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="phone2_field" id="ID" placeholder="Enter PHONE NUMBER" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    <%--  <div class="form-group">
                  <label class="control-label col-sm-4" for="email">ADDRESS:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="address_field" id="ID" placeholder="Enter ADDRESS" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div> --%>
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
                  <div class="col-sm-3"></div>
                </div>
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">EMAIL-ID:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="mail_field" id="ID" placeholder="Enter MAIL" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">SEX:</label>
                  <div class="col-sm-5">
                    <input type="radio" class="form-control" name="gen_field" id="ID" required="required">MALE<input type="radio" class="form-control" name="gen_field" id="ID" required="required">FEMALE
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                     <div class="form-group">
                  <label class="control-label col-sm-4" for="email">CHOOSE PASSWORD:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="password_field" id="ID" placeholder="Enter PASSWORD" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                    <div class="form-group">
                  <label class="control-label col-sm-4" for="email">MONTHLY DEPOSIT:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="monthlyDeposit_field" id="ID" placeholder="Enter AMOUNT" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-4" for="email">TYPE OF PAYMENT:</label>
                  <div class="col-sm-5">
                    <select name="payment_field" id="transfer" class="form-control">
                      <option value="0">select</option>
                      <option value="1">DEBIT CARD</option>
                      <option value="1">CREDIT CARD</option>
                      <option value="1">ONLINE PAYMENT</option>
                     
                    </select>
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                   
                   
                    <%--<div class="form-group">
                  <label class="control-label col-sm-4" for="email">Pincode:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="pin_code" id="pin_code" placeholder="Enter Pin Code" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>--%>
                   
                   
                     <%--<div class="form-group">
                  <label class="control-label col-sm-4" for="email">Pincode:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="pin_code" id="pin_code" placeholder="Enter Pin Code" required="required">
                  </div>
                  <div class="col-sm-3"></div>
                </div>--%>
                     
                   
                   
                <div class="form-group">        
                  <div class="col-sm-offset-4 col-sm-2">
                    <input type="submit" class="btn btn-default" name="click here to register" value="click here to register" style="cursor:pointer;" />
                  </div>
                </div>
                     <div class="form-group">        
                  <div class="col-sm-offset-4 col-sm-2">
                    <input type="reset password" class="btn btn-default" name="reset password" value="reset password" style="cursor:pointer;" />
                  </div>
                </div>
            </form>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
</body>
</html>























