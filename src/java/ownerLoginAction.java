/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author student
 */
@WebServlet(name = "ownerLoginAction", urlPatterns = {"/ownerLoginAction"})
public class ownerLoginAction extends HttpServlet {

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
             String email=null,psw=null;
             email=request.getParameter("email");
             psw=request.getParameter("psw");
         Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackmanagement","123","123");

String q="select * from ownerdata where email='"+email+"'";
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(q);
String ts=null;
if(rs.next())
{
    ts=rs.getString(4);
   
    if(ts.equals(psw))
    { 
        javax.servlet.http.HttpSession session=request.getSession();
        session.setAttribute("o",email);
          javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("ownerhome.jsp");
                       request.setAttribute("remsg", "Try Again");
                      rd.forward(request, response);
    }
       else
       {
           javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("ownerLoginjs.jsp");
                       request.setAttribute("remsg", "Try Again");
                      rd.forward(request, response);
       }
}    
else
    {
               javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("ownerLoginjs.jsp");
                       request.setAttribute("remsg", "Try Again");
                      rd.forward(request, response);
       }
        
    
            
           
        }
        catch(Exception e){
            out.print(e);
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
