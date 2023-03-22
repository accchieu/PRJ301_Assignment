/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Dal.CatSupUnitDao;
import Dal.ProductDao;
import Model.Category;
import Model.Product;
import Model.Suplier;
import Model.Unit;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author vuhai
 */
@WebServlet(name="addProduct", urlPatterns={"/addProduct"})
public class addProduct extends HttpServlet {
   
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addProduct</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addProduct at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        CatSupUnitDao dao = new CatSupUnitDao();
        List<Category> listC = dao.getAll();
        request.setAttribute("listC", listC);
        List<Unit> listU = dao.getAllUnit();
        request.setAttribute("listU", listU);
        List<Suplier> listS = dao.getAllSuplier();
        request.setAttribute("listS", listS);
        request.getRequestDispatcher("addProduct.jsp").forward(request, response);
        
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String CategoryId_raw = request.getParameter("CategoryId");
        String DisplayName = request.getParameter("DisplayName");
        String UnitId_raw = request.getParameter("UnitId");
        String SuplierId_raw = request.getParameter("SuplierId");
        String total_raw = request.getParameter("total");
        String image = request.getParameter("image");
        String price_raw = request.getParameter("price");
        String des = request.getParameter("des");
        ProductDao dao = new  ProductDao();
        try {
            float price = Float.parseFloat(price_raw);
            int CategoryId = Integer.parseInt(CategoryId_raw);
            int UnitId = Integer.parseInt(UnitId_raw);
            int SuplierId = Integer.parseInt(SuplierId_raw);
            int total = Integer.parseInt(total_raw);
            dao.insertProduct(CategoryId, DisplayName, UnitId, SuplierId, total, image, price, des);
        } catch (Exception ex) {
            System.out.println(ex);
        }
        response.sendRedirect("crudProduct");
        
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
