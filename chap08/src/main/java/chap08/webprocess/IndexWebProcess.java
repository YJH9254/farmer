package chap08.webprocess;

import javax.servlet.http.HttpServletRequest;

public class IndexWebProcess implements WebProcess{
   
   @Override
   public String process(HttpServletRequest request) {
      
      return "WEB-INF/views/index.jsp";
   }
}