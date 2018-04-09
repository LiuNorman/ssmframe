package com.function.message.mq;

import java.util.ResourceBundle;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.Destination;
import javax.jms.MessageConsumer;
import javax.jms.Session;
import javax.jms.TextMessage;

import org.apache.activemq.ActiveMQConnection;
import org.apache.activemq.ActiveMQConnectionFactory;
import org.apache.activemq.command.ActiveMQTopic;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;

import com.frame.base.entity.OrderInfo;
import com.frame.util.JsonUtil;

/**
 * MQ消息接收类
 * 
 * @author Norman
 * @version 2014-12-15
 * 
 */
public class MQConsumer {
	
	
	// 消息模板
	@Autowired
	private JmsTemplate jmsTemplate;
	
	@Autowired
	private MQCacheQueue mqCacheQueue;
	
	@Autowired
	private ActiveMQTopic redbannerTopic;
	
	private static final Logger log = Logger.getLogger(MQConsumer.class);
	private static final String PROPERTISE = "config";
	
	private static final ResourceBundle RESOURCE_BUNDLE = ResourceBundle.getBundle(PROPERTISE);

	
	private static String mqURL=RESOURCE_BUNDLE.getString("AMQ.URL");
	private static String mqTopic=RESOURCE_BUNDLE.getString("AMQ.CONSUMER");
	
	public static void main(String[] args) {
		
		messageConsumer();
	}
	
	
	/**
	 * 接收数据
	 * 
	 * @param message
	 */
	public  void receive(String message){
		OrderInfo orderInfo = null;
		//<OrderInfo>
		String sid="sessionId_order_info";
		
		
		if(message==null){
			
			return ;
		}else{
			orderInfo=JsonUtil.passToBean(message, OrderInfo.class);
			//&& orderInfo.getOrderId()!=null
			if(orderInfo!=null  && mqCacheQueue.getOrderInfo().get(orderInfo.getOrderId()+"")==null){
				
			//入队列一份消息数据
			mqCacheQueue.putMap(orderInfo.getOrderId()+"" , orderInfo);
			
			jmsTemplate.convertAndSend(redbannerTopic,message);
			
			}else{
				return;
			}
		}
		log.info(message);
		
	}
	
	public static void messageConsumer(){
		
		// ConnectionFactory ：连接工厂，JMS 用它创建连接
		ConnectionFactory connectionFactory;
		
		// Connection ：JMS 客户端到JMS Provider的连接
		Connection connection = null;
		
		// Session： 一个发送或接收消息的线程
		Session session;
		
		// Destination ：消息的目的地;消息发送给谁.
		Destination destination;
		
		 // 消费者，消息接收者
		MessageConsumer consumer;
		
		connectionFactory = new ActiveMQConnectionFactory(ActiveMQConnection.DEFAULT_USER, ActiveMQConnection.DEFAULT_PASSWORD, mqURL);
		
		try {
			
			// 构造从工厂得到连接对象
			connection = connectionFactory.createConnection();
			
			// 启动
			connection.start(); 
			
			// 获取操作连接
			session = connection.createSession(Boolean.FALSE, Session.AUTO_ACKNOWLEDGE); 

			// 获取session注意参数值xingbo.xu-queue是一个服务器的queue，须在在ActiveMq的console配置
			destination = session.createQueue(mqTopic);
			
			consumer = session.createConsumer(destination);
			while (true) {
				
				// //设置接收者接收消息的时间，为了便于测试，这里谁定为100s
				TextMessage message = (TextMessage) consumer.receive(100000);
				if (null != message) {
					System.out.println("收到消息" + message.getText());
				} else {
					break;
				}
			}
		} catch (Exception e) {
			
			e.printStackTrace();
			
		} finally {
			
			try {
				
				if (null != connection){
					connection.close();
				}
				
			} catch (Throwable ignore) {
				
			}
		}
	}

}