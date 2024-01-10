package chap10.post; 

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/showPosts")
public class ShowPostsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<Post> posts;

    @Override
    public void init() throws ServletException {
        super.init();
        posts = new ArrayList<>();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("posts", posts);
        request.getRequestDispatcher("/showPosts.jsp").forward(request, response);
    }
}