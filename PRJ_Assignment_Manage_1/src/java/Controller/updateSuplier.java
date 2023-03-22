/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Dal.CatSupUnitDao;
import Dal.ProductDao;
import Model.Product;
import Model.Suplier;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author vuhai
 */
@WebServlet(name = "updateSuplier", urlPatterns = {"/updateSuplier"})
public class updateSuplier extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateProduct at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        CatSupUnitDao pdao = new CatSupUnitDao();
        String SuplierId = request.getParameter("SuplierId");
        try {

            Suplier s = pdao.getSuplierById(SuplierId);
            request.setAttribute("suplier", s);
            request.getRequestDispatcher("updateSuplier.jsp").forward(request, response);

        } catch (IOException | ServletException e) {
            System.out.println("Error: " + e);
        }
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
        CatSupUnitDao pdao = new CatSupUnitDao();

        try {
            String SuplierId_raw = request.getParameter("SuplierId");
            String displayName = request.getParameter("displayName");
            String SuplierAddress = request.getParameter("SuplierAddress");
            String Phone = request.getParameter("Phone");
            String Email = request.getParameter("Email");
            String MoreInfo = request.getParameter("MoreInfo");
            int SuplierId = Integer.parseInt(SuplierId_raw);
            Suplier ss = new Suplier(SuplierId, displayName, SuplierAddress, Phone, Email, MoreInfo);
            pdao.updateSuplier(ss);
            response.sendRedirect("crudSuplier");
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
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
