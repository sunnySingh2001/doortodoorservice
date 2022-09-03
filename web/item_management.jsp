<%@page import="java.sql.*" %>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
       <!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> --> 
        <title>View ITEMS</title>
        <style>
             .an
            {
                display: inline-block;color:white;font-weight: bold;font-size:40px;margin-top:15px;
                font-family: cursive;
                
            }
            
            
            .anu{
                background: black;
                font-weight: bold;
                font-size: 18px;
                color:white;
                padding:20px;
            }
              .anu1
            {
                background:white ;
                    font-weight:bold;
                    color:grey;
            }
        </style>
    </head>
    <body style="background: #077b8a;font-family: cursive;">
<%
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
        String sql = "select * from ITEMS";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
 %>
<!--   <br<center>
            <a href="add_item.jsp" class="btn btn-default"  role="button" style="width:400px; background-color:white;" >ADD NEW ITEM</a>
            </center>-->

   
<div style="background: black;height: 100px;margin-top:0px;">
        <center> <ul
      
            <li class="an">  <a href="add_item.jsp" style="background:white;color:black;font-weight:bold;border-radius: 10px;">Click Here</a></li>
     <!--   <a href="Addcategory.jsp" class="anus"style="background: white;color:black;font-weight: bold;border-radius:10px;float:top;margin-left: 1100px;height:80px; ">Add</a>
       -->
            <li class="an" style=""> To Add New Item</li>
             <li style="list-style: none"> <button type="submit" style="background: black;color:white;width:80px;text-decoration: none;border-radius: 5px;" ><a href="admin_home.html" style="color:white;">Home</a></button></div>
                          </li>
        </ul>
        </center>
    </div>








    <center><table border ="1" width="500" cellspacing="0" cellpadding="20">     
            <br><br><br>
            <tr>

                <td class="anu" style=" "><b>ITEM NO</b></td>
                <td class="anu" style=" "><b>DESCRIPTION</b></td>
                <td class="anu" style=" "><b>CATEGORY</b></td>
                <td class="anu" style=" "><b>UNIT</b></td>
                <td class="anu" style=" "><b>BRAND</b></td>
                <td class="anu" style=" "><b>PRICE</b></td>
                
                <td class="anu" style=" "><b>Edit</b></td>
                <td class="anu" style=" "><b>Delete</b></td>
             </tr>
<%
        while(rs.next()) {
            String itemno_var = rs.getString("itemno");
            String desc_var =rs.getString("description");
            String cat_var = rs.getString("Category");
            String unit_var = rs.getString("unit");
            String brand_var = rs.getString("brand");
            String price_var = rs.getString("price");
            
%>
        <tr>
            <td class="anu1"><br><b><%=itemno_var%></b></td>
            <td class="anu1"><br><b><%=desc_var%></b></td>
            <td class="anu1"><br><b><%=cat_var%></b></td>
            <td class="anu1"><br><b><%=unit_var%></b></td>
            <td class="anu1"><br><b><%=brand_var%></b></td>
            <td class="anu1"><br><b><%=price_var%></b></td>
            <td class="anu1"><br><a href="edit_item.jsp?x=<%=itemno_var%>" style="color:grey;">Edit</a></td>
            <td class="anu1"><br><a href="delete_item?x=<%=itemno_var%>" style="color:grey;">Delete</a></td>
        </tr>
        <% 
        }
        %>
        </table></center>
    </body>