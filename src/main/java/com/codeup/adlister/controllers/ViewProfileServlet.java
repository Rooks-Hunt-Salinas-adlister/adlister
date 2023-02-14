package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            //intended redirect
            request.getSession().setAttribute("last-page", "/profile");
            response.sendRedirect("/login");
            return;
        }

        //appends the list of ads for the individual user to their profile
        request.setAttribute("ads", DaoFactory.getAdsDao().userAds((User)request.getSession().getAttribute("user")));
        request.setAttribute("categories",DaoFactory.getCategoriesDao().all());
        request.setAttribute("categoriesDao", DaoFactory.getCategoriesDao());

        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }
}