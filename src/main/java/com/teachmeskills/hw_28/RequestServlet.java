package com.teachmeskills.hw_28;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet({"/request"})
public class RequestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getServletContext().getRequestDispatcher("/WEB-INF/save_request.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String numberCard = req.getParameter("numberCard").trim();
        String passCard = req.getParameter("passCard").trim();

        if (numberCard == null || passCard == null || numberCard.isEmpty() || passCard.isEmpty()) {
            resp.sendRedirect("/request");
        } else {
            req.setAttribute("numberCard", numberCard);
            req.setAttribute("passCard", passCard);
            req.getServletContext().getRequestDispatcher("/WEB-INF/card_info.jsp").forward(req, resp);
        }
    }
}