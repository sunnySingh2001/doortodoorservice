package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class add_agent extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
        
      String name_var=request.getParameter("name_field");
      String plotno_var=request.getParameter("plotno_field");  
      String lane_var=request.getParameter("lane_field");
      String area_var=request.getParameter("area_field");
      String city_var=request.getParameter("city_field");  
      String phone_var=request.getParameter("phone_field");
        String type_var=request.getParameter("type_field");
         String proficiency_var=request.getParameter("proficiency_field");
    
      String sql1="insert into agent values(null,'"+name_var+"','"+plotno_var+"','"+lane_var+"','"+area_var+"','"+city_var+"','"+phone_var+"','"+type_var+"','"+proficiency_var+"')";
        Statement st=con.createStatement();
        int i=st.executeUpdate(sql1);
        if(i>0)
        {
           // response.sendRedirect("add_agent.jsp");
             response.sendRedirect("add_agent.jsp?status=agent added");   
        }
        else
        {
          out.println("<h1>Record failed to insert</h1>" );   
        }
        
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