package chap08.util;

import javax.servlet.http.HttpServletRequest;

public class UriParser {

   public static String getCmd(HttpServletRequest request) {
      request.getRequestURI();
      request.getContextPath();

      return request.getMethod() + "::" + request.getRequestURI().substring(request.getContextPath().length());
   }

}