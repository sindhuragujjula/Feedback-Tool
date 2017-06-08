/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell_PC
 */
@WebServlet(name = "formQuestionsActions1", urlPatterns = {"/formQuestionsActions1"})
public class formQuestionsActions1 extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            String fbfid=null,url=null,email=null,title=null,q1=null,q2=null,q3=null,q4=null,q5=null,sta=null,str=null;
            fbfid=request.getParameter("fid");
            url=request.getParameter("url");
            email=request.getParameter("email");
            title=request.getParameter("ft");
            q1=request.getParameter("q1");
            q2=request.getParameter("q2");
            q3=request.getParameter("q3");
            q4=request.getParameter("q4");
            q5=request.getParameter("q5");
            sta=request.getParameter("sta");
            str=request.getParameter("str");
            String hh=request.getParameter("hh");
            
            
            String ww= request.getParameter("ww");
            
            String rurl= request.getParameter("rurl");
            
            
            
             Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackmanagement","123","123");
         
           String q="insert into feedbackformquestions values(0,'"+url+"','"+email+"','"+title+"','"+q1+"','"+q2+"','"+q3+"','"+q4+"','"+q5+"','"+sta+"','"+str+"','"+hh+"','"+hh+"','"+rurl+"')";
     
        Statement stmt=(Statement) con.createStatement();
        int i=stmt.executeUpdate(q);
        
        if(i>0)
        {
        out.print("Registered Successfully");
        }
        else
        {
            out.print("not registered");
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
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
