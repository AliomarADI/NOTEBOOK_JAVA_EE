/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2021-04-26 00:03:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String napisatZametku = "Написать заметку..."; 
  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>NotebookOnline</title>\n");
      out.write("    <link href=\"WEB-INF/style/index.css\">\n");
      out.write("    <!-- CSS only -->\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl\" crossorigin=\"anonymous\">\n");
      out.write("    <!-- JavaScript Bundle with Popper -->\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"p-5 text-center bg-light text-dark\">\n");
      out.write("    <h1 class=\"mb-3\">Бесплатный браузерный текстовой редактор</h1>\n");
      out.write("    <h4 class=\"mb-3\">Простой онлайн-инструмент, который делает запись заметок проще и удобнее</h4>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("    <a class=\"btn btn-primary\" href=\"\" role=\"button\">");
      out.print( napisatZametku );
      out.write("</a>\n");
      out.write("</div>\n");
      out.write("<!-- Jumbotron -->\n");
      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("<br><br><br>\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-1\"></div>\n");
      out.write("        <div class=\"col-10\">\n");
      out.write("            <h3>Описание</h3>\n");
      out.write("            <p>Блокнот Онлайн - это бесплатный текстовый редактор на основе браузера, который позволяет создавать и редактировать несколько текстовых файлов в вашем браузере. Не требуется регистрация и вход. Он отлично подходит для написания быстрых заметок и печати простой страницы. Что делает его особенным, так это функция автосохранения, которая сохраняет ваш черновик каждую секунду. Это предотвращает потерю данных в случае, если вы случайно закроете вкладку, или окно браузера внезапно вылетит. Документ, над которым вы работаете, будет автоматически восстановлен при повторном посещении, даже если вы закроете и снова откроете браузер. Также есть поддержка сохранения документов прямо на ваш компьютер. Блокнот онлайн содержит основные функции, которые предоставляет ваш обычный текстовый редактор, включая отмену, повтор, копирование, вырезание, вставку, поиск и замену, форматирование шрифта, карту символов, вставку даты и времени, список смайликов, проверку орфографии, счетчик слов, открытие и сохранение файлов, и печать страницы.</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-1\"></div>\n");
      out.write("    </div>\n");
      out.write("    <br><br>\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-1\"></div>\n");
      out.write("        <div class=\"col-10\">\n");
      out.write("            <h3>Как это работает?</h3>\n");
      out.write("            <p>Изменения сохраняются автоматически во время работы благодаря HTML5 localStorage API. Оно получает копию содержимого из текстового редактора и сохраняет ее на компьютер. С помощью этого метода ваши данные никогда не покидают ваше устройство. Интервал времени по умолчанию для сохранения черновика составляет 1000 мс или 1 секунду. Ваши заметки будут оставаться в веб-браузере до тех пор, пока вы не удалите файлы cookie и другие данные сайта. Вы можете попробовать это, напечатав что-нибудь в редакторе и обновив страницу.</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-1\"></div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<br><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"bg-dark\" style=\"width: 100%\">\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}