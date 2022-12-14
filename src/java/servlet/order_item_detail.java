package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
public class order_item_detail extends HttpServlet {
 

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
             
            HttpSession session=request.getSession(false);  
        String userid=(String)session.getAttribute("userid"); 
            
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
          //bring member id value from session
            String cate_var = request.getParameter("cate");
            String desc_var = request.getParameter("desc");
            String brand_var = request.getParameter("brand");
            String price_var = request.getParameter("price");
            String quantity_var = request.getParameter("quantity");
            String tot_price_var = request.getParameter("tot_price");
            
           
            String sql1 ="insert into ORDER_ITEMS(ORDERID,MEMBER_ID,CATEGORY,DESCRIPTION,BRAND,PRICE,QUANTITY,TOTAL_PRICE)values(seq_billno.nextval,'"+userid+"','"+cate_var+"','"+desc_var+"','"+brand_var+"',"+price_var+","+quantity_var+","+tot_price_var+")";
            Statement st = con.createStatement();
            int i=st.executeUpdate(sql1);
            if(i>0)
            {
               response.sendRedirect("order_item_detail.jsp?status=order placed!!!");
            }
            else
            {
                out.println("fails");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }finally {
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