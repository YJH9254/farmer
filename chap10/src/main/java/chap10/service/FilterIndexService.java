package chap10.service;

import javax.servlet.http.HttpServletRequest;

public class FilterIndexService implements Service {
   
   // 싱글톤 디자인 패턴
   // - 이 클래스의 인스턴스가 프로그램에서 단 하나빡에 생성되지 않도록 하는 패턴
   private static FilterIndexService instance = new FilterIndexService();
   
   public static FilterIndexService getInstance() {
      return instance;
   }
   
   private FilterIndexService() {}
   
   @Override
   public String service(HttpServletRequest request) {
      
      return "/WEB-INF/views/filter/index.jsp";
   }
   
      
}
