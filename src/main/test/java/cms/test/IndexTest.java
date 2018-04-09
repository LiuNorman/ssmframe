package java.cms.test;


import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.frame.controller.front.IndexController;
import com.frame.service.IndexService;

@Configuration
@ComponentScan
public class IndexTest {

	/*@Bean
	IndexService mockMessageService() {
		return new IndexService() {
			public String getMessage() {
				return "Hello World!";
			}
		};
	}*/
	public static void main(String[] args) {
		ApplicationContext context =  new AnnotationConfigApplicationContext(IndexTest.class);
		IndexController printer = context.getBean(IndexController.class);
		//printer.printMessage();
	}
}
