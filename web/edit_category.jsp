<%@page import="java.sql.*" %>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <title>Edit Category</title>
    </head>
    <body> 
        <%! 
            String id;
            String cat;
        %>
 <%
        Class.forName("oracle.jdbc.driver.OracleDriver");
        id=request.getParameter("x");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
        String sql = "select * from CATEGORY where product_id="+id+"";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
        if(rs.next()) {
            cat = rs.getString("product_category");
        }
 %>
    <center>
        <form action="editcategory">
          
        <h1>Edit Category</h1>
        <table>
            <br><br>
            <tr>
                <td><b>Category:</b></td>
                <td><input type="text" class="form-control" name="pcat" placeholder="" value="<%=cat%>" required="required"></td>
            </tr>
            <tr>
                <td></td> 
                <td><br><br><input type="submit" class="btn btn-success" name="submit" value="Edit" style="cursor:pointer;"></td>
            </tr>
        </table>
        </form>
    </center>
    </body>
</html>