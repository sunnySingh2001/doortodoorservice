package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class addcategory1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
        
      String category_var=request.getParameter("category");  
    
      String sql1="insert into category values(null,'"+category_var+"')";
        Statement st=con.createStatement();
        int i=st.executeUpdate(sql1);
        if(i>0)
        {
            response.sendRedirect("Addcategory.jsp?status=category added !!!");   
            //out.println("<h1>Record succesfully inserted</h1>" );
        }
        else
        {
          out.println("<h1>Record failed to insert</h1>" );   
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