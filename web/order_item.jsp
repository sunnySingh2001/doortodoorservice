<%@page import="java.sql.*"%>
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
ResultSet rs=stmt.executeQuery("select distinct CATEGORY from items");
%> 
<table>
    <center>
        <td>
        <tr>
<p><label for="cate">CATEGORY:</label>
                   <select name="s1" onChange="document.f1.submit()">
                   <option>SELECT </option>
<%
  while(rs.next())
   {
    String x=rs.getString("CATEGORY");
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
    <tr>
 <p><label for="desc">DESCRIPTION:</label>
                    <select name="s2" onChange="document.f1.submit()">
              <option>Select </option>
  <%
     if(st !=null)
       {
   ResultSet rs1=stmt1.executeQuery("select * from items where CATEGORY='"+st+"'");
  
  while(rs1.next())
   {
   //String x1=rs1.getString("DREGDNO");
       x1=rs1.getString("DESCRIPTION");
   %>
   <option <% if(st1 !=null && st1.equals(x1)) 
          out.println("selected"); %>
><%=x1%></option>
  
 <%
    }//end of while
   } //end of if
 %>
</select>

</p>
    </tr>
    <tr>

<p><label for="brand">BRAND:</label>
                    <select name="s3">
              <option>Select </option>
  <%
     if(st1 !=null)
       {
   ResultSet rs2=stmt2.executeQuery("select * from items where DESCRIPTION='"+st1+"'");
  
  while(rs2.next())
   {
   //String x1=rs1.getString("DREGDNO");
       x2=rs2.getString("BRAND");
   %>
  <option <% if(st2 !=null && st2.equals(x2)) 
          out.println("selected"); %>
><%=x2%></option>
 <%
    }//end of while
   } //end of if
 %>
</select>

</p>
    </tr>

    
<p><input type="button" value="add to cart" onclick="submitForm()" />
</form>
<script>
	function submitForm()
	{		
		document.f1.action='order_item_detail.jsp';
		document.f1.submit();		
	}
</script>