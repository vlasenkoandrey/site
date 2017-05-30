package cc.vlasenko.site.server;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource("classpath:mvc-dispatcher-servlet.xml")
public class WebContext {
}
