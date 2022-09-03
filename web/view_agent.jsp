<%@page import="java.sql.*" %>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
       <!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> --> 
        <title>View Agents</title>
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
        String sql = "select * from AGENT";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
 %>
   <br><br><br><center>
            <a href="add_agent.jsp" class="btn btn-default"  role="button" style="width:400px; font-weight: bold;font-size:35px;background-color: white;color:black;" >ADD NEW AGENT</a>
            <br>
            <li style="margin-top:30px;list-style: none"> <button type="submit" style="background: black;color:white;width:80px;text-decoration: none;border-radius: 5px;" ><a href="admin_home.html" style="color:white;">Home</a></button></div>
                          </li>        
   </center>
    <center><table border ="1" width="500" cellspacing="0" cellpadding="20">     
            <br><br><br>
            <tr>
                <td  class="anu" ><u><b>id</b></u></td>
                <td  class="anu" ><u><b>name</b></u></td>
                <td  class="anu" ><u><b>plot no</b></u></td>
                <td  class="anu" ><u><b>lane</b></u></td>
                <td  class="anu" ><u><b>area</b></u></td>
                <td  class="anu" ><u><b>city</b></u></td>
                <td  class="anu" ><u><b>phone no</b></u></td>
                <td  class="anu" ><u><b>type</b></u></td>
                <td  class="anu" ><u><b>proficiency</b></u></td>
                <td  class="anu" ><u><b>edit</b></u></td>
                <td  class="anu" ><u><b>delete</b></u></td>
            </tr>
<%
        while(rs.next()) {
            String id = rs.getString("agent_id");
            String name =rs.getString("name");
            String plotno = rs.getString("plot_no");
            String lane = rs.getString("lane");
            String area = rs.getString("area");
            String city = rs.getString("city");
            String phoneNo = rs.getString("phone_no");
            String type = rs.getString("type");
            String proficiency = rs.getString("proficiency");
           
            
%>
        <tr>
            <td class="anu1"><br><b><%=id%></b></td>
            <td class="anu1"><br><b><%=name%></b></td>
            <td class="anu1"><br><b><%=plotno%></b></td>
            <td class="anu1"><br><b><%=lane%></b></td>
            <td class="anu1"><br><b><%=area%></b></td>
            <td class="anu1"><br><b><%=city%></b></td>
            <td class="anu1"><br><b><%=phoneNo%></b></td>
            <td class="anu1"><br><b><%=type%></b></td>
            <td class="anu1"><br><b><%=proficiency%></b></td>
            <td class="anu1"><br><a href="edit_agent.jsp?x=<%=id%>">Edit</a></td>
            <td class="anu1"><br><a href="delete_agent?x=<%=id%>">Delete</a></td>
        </tr>
        <% 
        }
        %>
        </table></center>
    </body>