package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdDetailsServlet", urlPatterns = "/details")

public class AdDetailsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long adId = Long.parseLong(request.getParameter("ad_id"));
        request.setAttribute("detailedAd", DaoFactory.getAdsDao().findAdByID(adId));
        request.getRequestDispatcher("/WEB-INF/ads/details.jsp")
                .forward(request, response);
    }


}
