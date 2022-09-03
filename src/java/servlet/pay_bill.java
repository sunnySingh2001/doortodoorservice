package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class pay_bill extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
      String memberid_var=request.getParameter("memberid");
      String billno_var=request.getParameter("billno");
      String billtype_var=request.getParameter("billtype");  
      String date_var=request.getParameter("date");
      String amount_var=request.getParameter("amount");
      String phone_var=request.getParameter("phone");  
      
    
      String sql1="insert into billpayments values("+memberid_var+",'"+billno_var+"','"+billtype_var+"','"+date_var+"','"+amount_var+"','"+phone_var+"',0)";
        Statement st=con.createStatement();
        int i=st.executeUpdate(sql1);
        if(i>0)
        {
            response.sendRedirect("pay_bill_custo_succ.jsp");
           // out.println("<center><h1>Thank You,Your Bill Will Be Paid Soon !!!</h1></center>" );
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