<%@page import="java.sql.*"%>
<html>
    <head>
        <style>
            p{
                font-weight:bold;
                margin-top:300px;
                font-size:26px;
                
                
            }
            select
            {
               font-size:22px; 
                font-weight:bold;
            }
        </style>
    </head>
    <body style="background-color:lavender;">
        
<form name="f1" method="post" action="">
<%!
String x1;
String x2;
String x3;
%>

<%
 String st=request.getParameter("s1");
 String st1=request.getParameter("s2");
 String st2=request.getParameter("s3");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
Statement stmt=con.createStatement();
Statement stmt1=con.createStatement();
Statement stmt2=con.createStatement();
Statement stmt3=con.createStatement();
ResultSet rs=stmt.executeQuery("select distinct MEMBER_ID from BILLPAYMENTS where status=0");
%> 

    <center>
        <table style="">
        <td>
        <tr>
<p><label for="mid">CHOOSE MEMBER ID:</label>
                   <select name="s1" onChange="document.f1.submit()">
                   <option>SELECT </option>
<%
  while(rs.next())
   {
    String x=rs.getString("MEMBER_ID");
   %>
<option <% if(st !=null && st.equals(x)) 
          out.println("selected"); %>
><%=x%></option>
<%
   }
   %>
</select>
 </p>
    </tr>
    

    
    <input type="button" value="CHECK BILL" onclick="submitForm()" style="font-size:19px;font-weight: bold;background-color: black;color:white;border-radius: 6px;" />
</form>
<script>
	function submitForm()
	{		
		document.f1.action='view_bill1.jsp';
		document.f1.submit();		
	}
</script>
</table>
</center>

</body>
</html>