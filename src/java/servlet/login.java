package servlet;

import database.dbconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
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
          
            String uid=request.getParameter("u_id").trim();
            String pass=request.getParameter("password").trim();
            HttpSession session=request.getSession();
            String uid_db;
            String pass_db;
            String utype_db;
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","anu","anuradha");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from register");
           while(rs.next())
           {
                utype_db=rs.getString("type");
                uid_db=rs.getString("id");
                pass_db=rs.getString("password");
                if(uid.equals(uid_db) && pass.equals(pass_db))
                {
                    session.setAttribute("userid",uid);
                    session.setAttribute("password",pass);
                    session.setAttribute("usertype",utype_db);
                    
                    if(utype_db.equals("admin"))
                    {
                        response.sendRedirect("admin_home.html");
                    }
                    if(utype_db.equals("customer"))
                    {
                        response.sendRedirect("customer_home.jsp");
                    }
                   // if(utype_db.equals("user"))
                   // {
                   //     response.sendRedirect("user_home.jsp");
                   // }
                }
           
           }
            response.sendRedirect("login1.jsp?status=Login failed.Wrong user id or password");
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
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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





















///*
// * To change this template, choose Tools | Templates
// * and open the template in the editor.
// */
//package servlet;
//
//import database.dbconnection;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.*;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
///**
// *
// * @author Administrator
// */
//public class login extends HttpServlet {
//
//    /**
//     * Processes requests for both HTTP
//     * <code>GET</code> and
//     * <code>POST</code> methods.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter out = response.getWriter();
//        try {
//          
//            String uid=request.getParameter("u_id");
//            String pass=request.getParameter("password");
//            HttpSession sess=request.getSession();
//            String uid_db;
//            String pass_db;
//            String utype_db;
//             Connection con=dbconnection.getConnection();
//           Statement st=con.createStatement();
//           ResultSet rs=st.executeQuery("select * from register");
//           while(rs.next())
//           {
//                utype_db=rs.getString("type");
//                uid_db=rs.getString("id");
//                pass_db=rs.getString("password");
//                if(uid.equals(uid_db) && pass.equals(pass_db))
//                {
//                    sess.setAttribute("userid",uid);
//                    sess.setAttribute("password",pass);
//                    sess.setAttribute("usertype",utype_db);
//                    
//                    if(utype_db.equals("admin"))
//                    {
//                        response.sendRedirect("admin_home.jsp");
//                    }
//                    if(utype_db.equals("customer"))
//                    {
//                        response.sendRedirect("customer_home.jsp");
//                    }
////                    if(utype_db.equals("user"))
////                    {
////                        response.sendRedirect("user_home.jsp");
////                    }
//                }
//           
//           }
//            response.sendRedirect("login1.jsp?com=Login failed.Wrong user id or password");
//        } 
//        catch(Exception e)
//        {
//
//                e.printStackTrace();
//        }
//        finally {            
//            out.close();
//        }
//    }
//
//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP
//     * <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Handles the HTTP
//     * <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//}
