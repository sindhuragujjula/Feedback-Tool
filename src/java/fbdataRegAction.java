/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author student
 */
@WebServlet(name = "fbdataRegAction", urlPatterns = {"/fbdataRegAction"})
public class fbdataRegAction extends HttpServlet {

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
         
            String umail=null,phne=null,formid=null,q1=null,q2=null,q3=null,q4=null,q5=null,strrate=null,data=null,url=null,email=null;
            umail=request.getParameter("oe");
            
          
            phne=request.getParameter("phn");
            formid=request.getParameter("id");
            q1=request.getParameter("q1");
            q2=request.getParameter("q2");
            q3=request.getParameter("q3");
            q4=request.getParameter("q4");
            q5=request.getParameter("q5");
          strrate=request.getParameter("st");
           data=new java.util.Date().toString();
           url=request.getParameter("rurl");
           email=request.getParameter("e");
            
            
            Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackmanagement","123","123");
         
           String q="insert into feedbackdata values(0,'"+umail+"','"+phne+"','"+formid+"','"+q1+"','"+q2+"','"+q3+"','"+q4+"','"+q5+"','"+strrate+"','"+data+"','"+url+"','"+email+"')";
     
        Statement stmt=con.createStatement();
        int i=stmt.executeUpdate(q);
        
        if(i>0)
        {
             javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("sattvaqwidget.jsp");
             request.setAttribute("rid", formid);                     
             request.setAttribute("rmsg", "Feedback Added");
                      rd.forward(request, response);
        }
        else
        {
              javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("sattvaqwidget.jsp");
               request.setAttribute("rid", formid);       
              request.setAttribute("rmsg", "Try Again");
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
