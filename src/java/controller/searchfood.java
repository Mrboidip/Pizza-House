/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.FoodDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Food;

/**
 *
 * @author Nhat Anh
 */
@WebServlet(name = "searchfood", urlPatterns = {"/searchfood"})
public class searchfood extends HttpServlet {

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
        String text = request.getParameter("text");

        FoodDAO foodDAO = new FoodDAO();
        List<Food> foods = foodDAO.searchFood(text);

        for (Food food : foods) {
            out.println("<div class=\"col-sm-6 col-lg-4 col-xl-3\" id=\"food_" + food.getId() + "\">\n"
                    + "                        <!-- Product-->\n"
                    + "                        <article class=\"product wow fadeInLeft\" data-wow-delay=\".15s\">\n"
                    + "                          <div class=\"product-figure \"><img src=\"" + food.getImage() + "\" class=\"product-image\" alt=\"\" width=\"161\" height=\"162\"/>\n"
                    + "                          </div>\n"
                    + "                          <div class=\"product-rating\"><span class=\"mdi mdi-star\"></span><span class=\"mdi mdi-star\"></span><span class=\"mdi mdi-star\"></span><span class=\"mdi mdi-star\"></span><span class=\"mdi mdi-star text-gray-13\"></span>\n"
                    + "                          </div>\n"
                    + "                          <h6 class=\"product-title\">" + food.getName() + "</h6>\n"
                    + "                          <div class=\"product-price-wrap\">\n"
                    + "                            <div class=\"product-price\">$" + food.getPrice()+ "</div>\n"
                    + "                          </div>\n"
                    + "                          <div class=\"product-button\">\n"
                    + "                            <div class=\"button-wrap\"><span class=\"button button-xs button-primary button-winona\" onclick=\"addToOrder(" + food.getId()+ ")\" >Add to order</span></div>\n"
                    + "                          </div>\n"
                    + "                        </article>\n"
                    + "                    </div>");
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
