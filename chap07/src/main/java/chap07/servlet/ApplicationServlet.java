package chap07.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.util.UriParser;
import chap07.webprocess.BreadAddFormWebProcess;
import chap07.webprocess.BreadAddWebProcess;
import chap07.webprocess.BreadDeleteFormWebProcess;
import chap07.webprocess.BreadDeleteWebProcess;
import chap07.webprocess.BreadListWebProcess;
import chap07.webprocess.BreadUpdateFormWebProcess;
import chap07.webprocess.BreadUpdateWebProcess;
import chap07.webprocess.DBTestWebProcess;
import chap07.webprocess.IndexWebProcess;
import chap07.webprocess.WebProcess;

public class ApplicationServlet extends HttpServlet {

   static Map<String, WebProcess> uriMapping = new HashMap<>();

   static {

      // (1) 전달받은 URI(cmd)에 따라 알맞은 웹 프로세스를 꺼내줄 수 있는 맵을 생성해두면 if 문을 사용하지 않을 수 있다 (커맨드
      // 패턴)
      // WebProcess 를 상속받았으므로 uriMapping 의 매개변수로 사용이 가능함

      // 기본적으로 web.xml 에서 모든 URI를 ApplicationServlet 으로 보내게끔 설정을 해놨기 때문에 이런 작업도 가능한거임

      uriMapping.put("GET::/", new IndexWebProcess());
      uriMapping.put("GET::/dbtest/list", new DBTestWebProcess());
      uriMapping.put("GET::/bread/list", new BreadListWebProcess());
      // 같은 주소에 다른 메서드를 연결하고 싶을 때 겟 포스트 두가지로 가능
      uriMapping.put("GET::/bread/add", new BreadAddFormWebProcess());
      uriMapping.put("POST::/bread/add", new BreadAddWebProcess());
      
      uriMapping.put("GET::/bread/delete", new BreadDeleteFormWebProcess());
      uriMapping.put("POST::/bread/delete", new BreadDeleteWebProcess());
      
      uriMapping.put("GET::/bread/update", new BreadUpdateFormWebProcess());
      uriMapping.put("POST::/bread/update", new BreadUpdateWebProcess());
   }

   @Override
   protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

      String cmd = UriParser.getCmd(req);
   //   System.out.println("method : " + req.getMethod());

      // 내가 전달받은 URI를 문자열 형태로 전달받으면 다음으로 가야할 뷰 페이지를 반환하는 메서드가 있으면
      // 코드가 전체적으로 간결해질 수 있음을 파악해야함 코드는 간결할수록 좋음

      // 1. URI를 문자열 형태로 전달받는다
      // 2. 해당 URI에 알맞은 처리를 한다(DB 등)
      // 3. 내가 다음으로 가야할 뷰 페이지로 포워드하거나 리다이렉트한다

      String nextPage = uriMapping.get(cmd).process(req);
   //   System.out.println(uriMapping.get(cmd));
      System.out.println(nextPage);
      if (nextPage.startsWith("redirect::")) {
         resp.sendRedirect(nextPage.substring("redirect::".length()));
      } else {
         req.getRequestDispatcher(nextPage).forward(req, resp);
      }
   }
}
      // if 문을 사용할 때의 문제점
      // 코드의 양이 과하게 늘어나기 때문에 유지보수가 힘들어짐
      // 이런 특성을 가진 if 문은 제거해야함 - Interface 와 Map 을 활용