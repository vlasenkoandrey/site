package cc.vlasenko.site.server;

import org.apache.jasper.servlet.JspServlet;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.servlet.ServletHolder;
import org.eclipse.jetty.webapp.WebAppContext;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class MainServer {

    public void start() throws Exception {
        AnnotationConfigWebApplicationContext webContext = new AnnotationConfigWebApplicationContext();
        webContext.register(WebContext.class);

        ServletHolder servletHolder = new ServletHolder("mvc-dispatcher", new DispatcherServlet(webContext));
        servletHolder.setAsyncSupported(true);
        servletHolder.setInitOrder(1);

        WebAppContext webAppContext = new WebAppContext();
        webAppContext.setInitParameter("contextConfigLocation", WebContext.class.getName());
        webAppContext.setResourceBase(".");
        webAppContext.addEventListener(new ContextLoaderListener(webContext));
        webAppContext.setContextPath("/");
        webAppContext.addServlet(servletHolder, "/a/*");

        Server server = new Server(8080);

        // fucking magic for support jsp
        // Including the JSTL jars for the webapp.
//        webAppContext.setAttribute("org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern",".*/[^/]*jstl.*\\.jar$");
//        // Enabling the Annotation based configuration
//        org.eclipse.jetty.webapp.Configuration.ClassList classlist = org.eclipse.jetty.webapp.Configuration.ClassList.setServerDefault(server);
//        classlist.addAfter("org.eclipse.jetty.webapp.FragmentConfiguration", "org.eclipse.jetty.plus.webapp.EnvConfiguration", "org.eclipse.jetty.plus.webapp.PlusConfiguration");
//        classlist.addBefore("org.eclipse.jetty.webapp.JettyWebXmlConfiguration", "org.eclipse.jetty.annotations.AnnotationConfiguration");


        server.setHandler(webAppContext);
        server.start();
        server.join();
    }

}
