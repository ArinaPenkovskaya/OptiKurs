package controller;

import dbHelpers.DeleteQuery;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //get id
        int ClientID = Integer.parseInt(request.getParameter("ClientID"));
        //create a DeleteQuery object
        DeleteQuery dq = new DeleteQuery();
        //use DeleteQuery to delete object
        dq.doDelete(ClientID);

        //pass execution on to the REadServlet
        String url = "/clients";

        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

}
