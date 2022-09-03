package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class edit_item extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
        
       //String id_var=request.getParameter("id");  
       //out.println(id_var);
       //String input = request.getParameter("category_edited");
      
       
       String itemno_var=request.getParameter("itemno_field");  
       String description_var=request.getParameter("description_field");
       String category_var=request.getParameter("category_field");
       String unit_var=request.getParameter("unit_field");
       String brand_var=request.getParameter("brand_field");  
       String price_var=request.getParameter("price_field");
       String sql="update items SET description='"+description_var+"',category='"+category_var+"',unit='"+unit_var+"',brand='"+brand_var+"',price='"+price_var+"' where itemno="+itemno_var+"";
        Statement st=con.createStatement();
        int i=st.executeUpdate(sql);
        if(i>0)
        {
            response.sendRedirect("edit_item.jsp?status=item edited !!!");
           // out.println("<h1>Item Edited</h1>" );
        }
        else
        {
          out.println("<h1>Couldn't edit item</h1>" );   
        }
         //String sql2="insert into customer values('"+id_var+"','"+name_var+"','"+spouse_name_var+"','"+age_var+"','"+spouse_age_var+"','"+phone1_var+"','"+phone2_var+"','"+plot_var+"','"+lane_var+"','"+area_var+"','"+city_var+"','"+mail_var+"','"+gen_var+"','"+deposit_var+"')";
         //int j=st.executeUpdate(sql2);
         /**if(j>0)
         {
            out.println("<h1>Record succesfully inserted</h1>" );
        }
        else
        {
         out.println("<h1>Record failed to insert</h1>" );   
        }
         
        } 
        else
        {
           out.println("<h1>Record insertion unsuccessful</h1>" ); 
        }
        }**/
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}