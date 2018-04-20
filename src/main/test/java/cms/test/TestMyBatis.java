package java.cms.test;

import com.alibaba.fastjson.JSON;
import com.frame.base.entity.UserInfo;
import com.frame.service.IndexService;
import org.apache.log4j.Logger;
import org.springframework.test.context.ContextConfiguration;

import javax.annotation.Resource;

//表示继承了SpringJUnit4ClassRunner类    
//@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})

public class TestMyBatis {

    private static Logger logger = Logger.getLogger(TestMyBatis.class);
    //  private ApplicationContext ac = null;
    @Resource
    private IndexService indexService = null;

//  @Before  
//  public void before() {  
//      ac = new ClassPathXmlApplicationContext("applicationContext.xml");  
//      userService = (IUserService) ac.getBean("userService");  
//  }  

    //@Test
    public void test1() {
        UserInfo user = indexService.getUserById(1);
        // System.out.println(user.getUserName());  
        // logger.info("值："+user.getUserName());  
        logger.info(JSON.toJSONString(user));
    }
}  
