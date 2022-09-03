<%@page import="java.sql.*" %>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <title></title>
    </head>
    <body> 
        <%! 
            String agentid;
            String nm;
            String plotno;
            String laneno;
            String areano;
            String citynm;
            String phone;
            String typex;
            String proficiencyx;
        %>
 <%
        Class.forName("oracle.jdbc.driver.OracleDriver");
        agentid=request.getParameter("x");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
        String sql = "select * from agent where agent_id="+agentid+"";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
        if(rs.next()) {
            nm=rs.getString("name");
            plotno = rs.getString("plot_no");
            laneno=rs.getString("lane");
            areano=rs.getString("area");
            citynm=rs.getString("city");
            phone=rs.getString("phone_no");
            typex=rs.getString("type");
            proficiencyx=rs.getString("proficiency");
            
        }
 %>
    <center>
        <%
         
         String status=request.getParameter("status");
         if(status!=null)
         {
         
         %>
         <b style="color:black;background-color: wheat;font-size:25px;border-radius:5px;"><%=status%></b>
         
         <%
         
         }
         %>
     
        <form action="edit_agent">
           
            <input type="hidden" name="agentid_field" value="<%=agentid%>">
        <h1>Edit Agent</h1>
        <table style="">
            <tr>
                <td><b>Agent_ID:</b></td>
                <td><%=agentid%></td>
            </tr>
            <tr>
                <td><b>Name:</b></td>
                <td><input type="text" class="form-control" name="name_field" value="<%=nm%>" required="required"></td>
            </tr>
  
            <br><br>
            <tr>
                <td><b>Plot No:</b></td>
                <td><input type="text" class="form-control" name="plotno_field"  value="<%=plotno%>" required="required"></td>
            </tr>
         <br><br>
            <tr>
                <td><b>Lane:</b></td>
                <td><input type="text" class="form-control" name="lane_field"  value="<%=laneno%>" required="required"></td>
            </tr>
           <br><br>
            <tr>
                <td><b>Area:</b></td>
                <td><input type="text" class="form-control" name="area_field"  value="<%=areano%>" required="required"></td>
            </tr>
           
            <br><br>
            <tr>
                <td><b>City:</b></td>
                <td><input type="text" class="form-control" name="city_field" value="<%=citynm%>" required="required"></td>
            </tr>
            <br><br>
            <tr>
                <td><b>Phone No:</b></td>
                <td><input type="text" class="form-control" name="phone_field" value="<%=phone%>" required="required"></td>
            </tr>
            <br><br>
            <tr>
                <td><b>Type:</b></td>
                <td> <select name="type_field" id="unit" class="form-control">
                      <option >select</option>
                      <option >Carpenter</option>
                      <option >Plumber</option>
                      <option >Electrician</option>
                      
                       
                      
                    </select>
                </td>
<!--                <td><input type="text" class="form-control" name="type_field" placeholder="<%=typex%>" required="required">
                
                
                </td>-->
            </tr>
            <br><br>
            <tr>
                <td><b>Proficiency:</b></td>
<!--                <td><input type="text" class="form-control" name="proficiency_field" placeholder="<%=proficiencyx%>" required="required"></td>-->
                <td> <select name="proficiency_field" id="unit" class="form-control">
                      <option >select</option>
                      <option >Excellent</option>
                      <option >Moderate</option>
                </td>
            </tr>
            <tr>
                <td></td> 
                <td><br><br><input type="submit" class="btn btn-success" name="submit" value="Edit" style="cursor:pointer;"></td>
<!--            <td><br><br><input type="submit" class="btn btn-success" name="submit" value="Back" style="cursor:pointer;"></td>
            </tr>-->
            </tr>
        </table>
                 <li style="margin-left:70px;list-style: none"> <div style=""><button type="submit" style="background: black;color:white;width:80px;text-decoration: none;border-radius: 5px;" ><a href="view_agent.jsp" style="color:white;">Back</a></button></div>
                          </li>
                </form>
    </center>
    </body>
</html>