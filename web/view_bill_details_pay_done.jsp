<%@page import="java.sql.*"%>
<%!
String price;
String memid;
String amt;
%>

<%
   price=request.getParameter("price");
   memid=request.getParameter("memid");
   double paymentd = Double.parseDouble(price);
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
   //String sql="update  set name='"+name_var+"', email='"+email_var+"',password='"+pwd_var+"',age="+age_var+", city='"+city_var+"' where slno="+id_var+" ";
   String sql0="Select amount from recharge_amt where member_id='"+memid+"' ";
   Statement st0 = con.createStatement();
   ResultSet rs0 = st0.executeQuery(sql0);
   String sql = "";
   if(rs0.next())
   {
       double amount = rs0.getDouble("amount");
       if(amount>=paymentd) {
          sql="update recharge_amt set amount=amount-"+price+"  where member_id='"+memid+"' "; 
          int i=st0.executeUpdate(sql);
          if(i>0)
          {
                response.sendRedirect("view_bill_details_pay_done_succ.jsp");
             // out.println("<center><h1>This bill is successfully paid !!</h1></center> ");
              
           String  sql1="update billpayments set status=1 where member_id='"+memid+"'";
           Statement st1=con.createStatement();
           st1.executeUpdate(sql1);
                     }
       }
       else{
           out.println("Insufficient balance:"+amount);
       }
        
   } 
   else
   {
       out.println("fail");
   }
   %>
   