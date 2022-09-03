package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

public class recharge_amount extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
    //  String memberid_var=request.getParameter("memberid");
        HttpSession session=request.getSession(false);
      String memberid=(String)session.getAttribute("userid");
      String amount_var=request.getParameter("amount");
      
      
      
      String sql0="Select amount from recharge_amt where member_id='"+memberid+"' ";
   Statement st0 = con.createStatement();
   ResultSet rs0 = st0.executeQuery(sql0);
   String sql = "";
   if(rs0.next()){
      sql="update recharge_amt set amount=amount+"+amount_var+"  where member_id='"+memberid+"' ";
   }
   else {
       sql="insert into recharge_amt values('"+memberid+"',"+amount_var+")";   
   }
   //out.println(sql);
     Statement st=con.createStatement();
    int i=st.executeUpdate(sql);
    if(i>0)
    {
         response.sendRedirect("recharge_amount_succ.jsp");
       //out.println("<h1 ><center ><b>Thank You For recharging, your balance is now"+amount_var+"</b></center></h1> ");
        //out.println("Record successfully inserted");
       
        
               
    }
    else
    {
        out.println("fails");
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