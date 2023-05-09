package controller;

import dbHelpers.invoices.ReadQueryInvoices;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Invoices extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Pass execution on to doPost
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Create a ReadQuery helper object
        ReadQueryInvoices rqi = new ReadQueryInvoices();

        //Get the HTML table from ReadQuery object
        rqi.doReadI();
        String table = "";

        try {
            table = rqi.getHTMLtableI();
        } catch (ParseException ex) {
            Logger.getLogger(Invoices.class.getName()).log(Level.SEVERE, null, ex);
        }

        //Pass execution controll to index.jsp along with the table
        request.setAttribute("table", table);
        String url = "/invoices.jsp";

        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);

    }

}