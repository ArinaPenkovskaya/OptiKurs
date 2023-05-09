package controller;

import dbHelpers.deposits.ReadQueryDeposit;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class List extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Create a ReadQuery helper object
        ReadQueryDeposit rq = new ReadQueryDeposit();

        //Get the HTML table from ReadQuery object
        rq.doReadDeposit();
        String table = rq.getHTMLtable();

        //Pass execution controll to index.jsp along with the table
        request.setAttribute("table", table);
        String url = "/addDeposit.jsp";

        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);

    }

}
