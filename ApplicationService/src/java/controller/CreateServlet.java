/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import client.NewJerseyClient;
import entity.Users;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author macos
 */
public class CreateServlet extends HttpServlet {

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
        String username = request.getParameter("txtusername");
        String password = request.getParameter("txtpassword");
        int role = Integer.parseInt(request.getParameter("txtrole"));
        
        NewJerseyClient client = new NewJerseyClient();
        GenericType<List<Users>> gType = new GenericType<List<Users>>(){
        };
        
        Users u = new Users();
        u.setUsername(username);
        u.setPassword(password);
        u.setRole(role);
        client.create_XML(u);
        List<Users> users = (List<Users>) client.findAll_XML(gType);
        request.setAttribute("ListUser",users);
        request.getRequestDispatcher("usermanagement.jsp").forward(request, response);
        
    }
}
