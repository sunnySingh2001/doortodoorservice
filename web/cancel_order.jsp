<%@page import="java.sql.*" %>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
       <!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> --> 
        <title>View Category</title>
        
        
        <style>
            .anu{
                background: black;
                font-weight: bold;
                font-size: 25px;
                color:white;
            }
            .anu1
            {
                background:white ;
                    font-weight:bold;
                    color:grey;
            }
            table tr td 
            {
                text-decoration: none;
            }
            .an
            {
                display: inline-block;color:white;font-weight: bold;font-size:40px;margin-top:15px;
                font-family: cursive;
                
            }
           
        </style>
        
        
        
        
        
        
    </head>
    <body style="background: #a2d5c6;font-family: cursive;">
<%
     String id_var=(String)session.getAttribute("userid");
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
        String sql = "select *  from ORDER_ITEMS WHERE MEMBER_ID='"+id_var+"'";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
 %>

   
  <center><table border ="1" width="500" cellspacing="0" cellpadding="20" >
          <br><br>
          <tr><a link href="customer_home.jsp" style="background-color:white;">Home</tr>
            <br>
            <tr>
               
                <td class="anu" style=" "><b>MEMBER_ID</b></td>
                <td class="anu" style=" "><b>CATEGORY</b></td>
                <td class="anu" style=" "><b>DESCRIPTION</b></td>
                 <td class="anu" style=" "><b>BRAND</b></td>
                  <td class="anu" style=" "><b>PRICE</b></td>
                  <td class="anu" style=" "><b>QUANTITY</b></td>
                  <td class="anu" style=" "><b>TOTAL_PRICE</b></td>
                   <td class="anu" style=" "><b>CANCEL_ITEM</b></td>
            </tr>
<%
        while(rs.next()) {
             String no = rs.getString("ORDERID");
            String ct = rs.getString("CATEGORY");
            String ds = rs.getString("DESCRIPTION");
             String br = rs.getString("BRAND");
             String pr = rs.getString("PRICE");
              String qt = rs.getString("QUANTITY");
               String t = rs.getString("TOTAL_PRICE");
%>
        <tr>
            <td class="anu1" style=""><br><b><%=id_var%></b></td>
            <td class="anu1" style=""><br><b><%=ct%></b></td>
             <td class="anu1" style=""><br><b><%=ds%></b></td>
              <td class="anu1" style=""><br><b><%=br%></b></td>
               <td class="anu1" style=""><br><b><%=pr%></b></td>
                <td class="anu1" style=""><br><b><%=qt%></b></td>
                 <td class="anu1" style=""><br><b><%=t%></b></td>
                 <td class="anu1" style=""><br><a href="cancel_order?x=<%=no%>" style="color:grey;">cancel</a></td>
             </tr>
        <% 
        }
         
         
         String status=request.getParameter("status");
         if(status!=null)
         {
         
         %>
         <b style="color:black;font-size:30px;"><%=status%></b>
         
         <%
         
         }
         %>
        
        </table></center>
    </body>

