package servlets;

import db.DBManager;
import db.Item;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/update")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Item item = new Item();
        item.setId(Long.valueOf(req.getParameter("id")));
        item.setName(req.getParameter("name"));
        item.setDescription(req.getParameter("description"));
        item.setPrice(Double.parseDouble(req.getParameter("price")));

        DBManager.updateItem(item);
        resp.sendRedirect("/allItems");
    }
}
