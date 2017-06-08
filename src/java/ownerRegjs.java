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
@WebServlet(name = "ownerRegjs", urlPatterns = {"/ownerRegjs"})
public class ownerRegjs extends HttpServlet {

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
            
            String weburl=null,webname=null,email=null,psw=null,actsta=null;
            weburl=request.getParameter("url");
            webname=request.getParameter("name");
            email=request.getParameter("email");
            psw=request.getParameter("psw");
            actsta=request.getParameter("sta");
            
            
            
            
           
            
             Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackmanagement","123","123");
         
           String q="insert into  ownerdata values('"+weburl+"','"+webname+"','"+email+"','"+psw+"','"+actsta+"')";
     
        Statement stmt=con.createStatement();
        int i=stmt.executeUpdate(q);
        
        if(i>0)
        {
        

         javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("ownerLoginjs.jsp");
                       request.setAttribute("remsg", "You have registered with us");
                      rd.forward(request, response);
        }
        else
        {
             javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("ownerLoginjs.jsp");
                       request.setAttribute("remsg", "Try Again");
                      rd.forward(request, response);
        }
                       
        }
            
            
            
        

        catch(Exception e)
{
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
