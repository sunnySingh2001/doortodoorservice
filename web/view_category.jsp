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
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
        String sql = "select * from CATEGORY";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
 %>
<!--   <br><br><br><center>
            <a href="Addcategory.jsp" class="btn btn-default"  role="button" style="width:500px; font-weight: bold;font-size:30px;background: white;color:black;" >ADD NEW CATEGORY</a>
            </center>-->
    
    
    
    
    <div style="background: black;height: 100px;margin-top:0px;">
        <center> <ul>
      
            <li class="an">  <a href="Addcategory.jsp" style="background:white;color:black;font-weight:bold;border-radius: 10px;">Click Here</a></li>
     <!--   <a href="Addcategory.jsp" class="anus"style="background: white;color:black;font-weight: bold;border-radius:10px;float:top;margin-left: 1100px;height:80px; ">Add</a>
       -->
            <li class="an" style=""> To Add Category</li>
            
            <li style="list-style: none"> <button type="submit" style="background: black;color:white;width:80px;text-decoration: none;border-radius: 5px;" ><a href="admin_home.html" style="color:white;">Home</a></button></div>
                          </li>
        </ul>
        </center>
    </div>
    
    
    
    
    
    
    
    
    
    
    <center><table border ="1" width="500" cellspacing="0" cellpadding="20" >     
            <br><br><br>
            <tr>
                <td class="anu" style=" "><b>CATEGORY</b></td>
                <td class="anu" style=" "><b>Edit</b></td>
                <td class="anu" style=" "><b>Delete</b></td>
            </tr>
<%
        while(rs.next()) {
            String no = rs.getString("PRODUCT_ID");
            String ct = rs.getString("PRODUCT_CATEGORY");
%>
        <tr>
            <td class="anu1" style=""><br><b><%=ct%></b></td>
            <td class="anu1" ><br><a href="edit_category1.jsp?x=<%=no%>" style="color:grey;">Edit</a></td>
            <td class="anu1" style=""><br><a href="delete_category?x=<%=no%>" style="color:grey;">Delete</a></td>
        </tr>
        <% 
        }
        %>
<!--        <tr class ="anu1"><a href="http://localhost:8084/web1/view_category.jsp" download>Download
            
  <img src="/images/myw3schoolsimage.jpg" alt="W3Schools">
</a></tr>-->
        </table></center>
    </body>

