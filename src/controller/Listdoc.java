package controller;

import dbHelpers.deposits.ReadQueryDeposit;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Listdoc extends HttpServlet {

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
        

        rq.doReadOD();
        String table="";
        try {
            table = rq.getHTMLtableOD();
        } catch (ParseException ex) {
            Logger.getLogger(Listdoc.class.getName()).log(Level.SEVERE, null, ex);
        }

        //Pass execution controll to index.jsp along with the table
        request.setAttribute("table", table);
        String url="/deposits.jsp";

        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
        
    }

}
