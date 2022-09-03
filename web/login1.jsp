<!DOCTYPE html>
<!--
Template Name: Chillaid
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Copyright: OS-Templates.com
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>HelpAtDoorStep</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout.css" rel="stylesheet" type="text/css" media="all">
<style>

.pass_input{width:155px; height:21px; border:solid 1px #95E18C; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;}
</style>
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="hoc clear">
    <div id="logo" class="fl_left"> 
      <!-- ################################################################################################ -->
      <h1 class="logoname" style="font-size:32px;"><a href="index.html"><b>Help At DoorStep</b><span></a></h1>
      <!-- ################################################################################################ -->
    </div>
    <nav id="mainav" class="fl_right"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="index.html">Home</a></li>
        <li><a class="drop" href="#">About Us</a>
         
        </li>
      
        <li><a href="login1.jsp">Log In</a></li>
        <li><a href="#">Contact Us</a></li>
        <li><a href="register1.jsp">Register</a></li>
      </ul>
      <!-- ################################################################################################ -->
    </nav>
  </header>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="bgded overlay" >
  <div  > 
    <!-- ################################################################################################ -->
    
    <!-- ################################################################################################ -->
  </div>
</div>

<div class="wrapper row2">
  <section id="ctdetails" class="hoc container clear"> 
    
 <article class="one_half">
 
     <%
         
         String status=request.getParameter("status");
         if(status!=null)
         {
         
         %>
         <b style="color:red"><%=status%></b>
         
         <%
         
         }
         %>
         
     
      <center>
      <form action="login" name="login" method="get" style="width:500px;">
<table width="100%" >
		<tr>
          <td  width="100%" class="login_txt" align="center" style="padding-bottom:10px; color:#0000CC;" ><font size="20">Login Here</font></td>
        </tr>
</table>
      <table width="50%"  align="center" cellpadding="8" style="border:5px solid #00FF33; margin-top:20px; background-color:#FFFFFF;">
        <tr>
          <td  colspan="2" align="left" valign="top" style="color:#05903F; font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:700;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" height="104" align="center"  style="color:#000000; font-family:Arial, Helvetica, sans-serif; font-size:24px;"><img  src="images/1.jpg" height="100" /></td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td colspan="2" align="center" style="color:#ff0808; font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:700;"></td>
        </tr>
        <tr>
          <td width="42%" align="right" class="frm_txt" style="color:#339966; font-size:20px;"><strong>ID</strong></td>
          <td width="58%"><input type="text" class="pass_input" name="u_id" id="u_id" style="height:10px; width:200px; font:20px Arial, Helvetica, sans-serif" /></td>
        </tr>
        <tr>
          <td align="right" class="frm_txt" style="color:#339966; font-size:20px;"><strong>Password</strong></td>
          <td><input type="password" class="pass_input" name="password" id="password" style="height:10px; width:200px;font:20px Arial, Helvetica, sans-serif" /></td>
        </tr>
        <tr>
          <td align="center" colspan="2"><div align="right">
              <input type="submit" name="submit" value="Login" style="width:120px; height:40px; background-color:#FF9900; font:16px Arial, Helvetica, sans-serif; color:#FFFFFF; cursor: pointer" />
          </div></td>
        </tr>
        <td colspan="2" align="right"><a href="forget_password.php"><b>Forgot Password</b></a></td>
      </table>
      </form>
      </center>
    </article>
    <!-- ################################################################################################ -->
  </section>
</div>

<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">Help At Door Step</a></p>
   <!-- <p class="fl_right">Template by <a target="_blank" href="https://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>-->
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
<!-- Homepage specific -->
<script src="layout/scripts/jquery.easypiechart.min.js"></script>
<!-- / Homepage specific -->
</body>
</html>

