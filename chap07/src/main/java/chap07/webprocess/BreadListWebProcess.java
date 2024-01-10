package chap07.webprocess;

import javax.servlet.http.HttpServletRequest;

import chap07.dao.BreadDao;

public class BreadListWebProcess implements WebProcess{
   
   BreadDao breadDao = new BreadDao();

   @Override
   public String process(HttpServletRequest request) {
      // DB에서 꺼낸 후
      
      
      // attribute 에 넣음
      
      request.setAttribute("breads", breadDao.getAll());
      
      return "/WEB-INF/views/bread/list.jsp";
   }   
}