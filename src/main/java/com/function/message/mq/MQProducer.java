package com.function.message.mq;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.DeliveryMode;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.MessageProducer;
import javax.jms.Session;
import javax.jms.TextMessage;

import org.apache.activemq.ActiveMQConnection;
import org.apache.activemq.ActiveMQConnectionFactory;
import org.apache.activemq.command.ActiveMQTopic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;

/**
 * ActiveMQ的消息生产者类
 * 
 * @author Norman
 * @version 2014-3-4
 */
public class MQProducer {

	
	private static final int SEND_NUMBER = 10;
	
	// 消息模板
	@Autowired
	private  JmsTemplate jmsTemplate;

	@Autowired
	private ActiveMQTopic redbannerTopic;
	
	
	// 生成消息，发送
	public  boolean sendMessage(String message){
			
		try {
				
			
			jmsTemplate.convertAndSend(redbannerTopic,message);
			// 发送消息到目的地方 ;
			return true;
		
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}
	
	public static void main(String[] args) {
		
		messageProducer();
	}
	
	public static void messageProducer(){
		
		// ConnectionFactory ：连接工厂，JMS 用它创建连接
		ConnectionFactory connectionFactory;
		// Connection ：JMS 客户端到JMS Provider 的连接
		Connection connection = null;
		// Session： 一个发送或接收消息的线程
		Session session;
		// Destination ：消息的目的地;消息发送给谁.
		Destination destination;
		// MessageProducer：消息发送者
		MessageProducer producer;
		
		TextMessage message;
		
		// 构造ConnectionFactory实例对象，此处采用ActiveMq的实现jar
		connectionFactory = new ActiveMQConnectionFactory(ActiveMQConnection.DEFAULT_USER,ActiveMQConnection.DEFAULT_PASSWORD, "tcp://localhost:61616");
		
		try {
			// 构造从工厂得到连接对象
			connection = connectionFactory.createConnection();
			
			// 启动
			connection.start();
			
			// 获取操作连接
			session = connection.createSession(Boolean.TRUE, Session.AUTO_ACKNOWLEDGE);
			
			// 获取session注意参数值xingbo.xu-queue是一个服务器的queue，须在在ActiveMq的console配置
			destination = session.createQueue("FirstQueue");
			
			// 得到消息生成者【发送者】
			producer = session.createProducer(destination);
			
			// 设置不持久化，此处学习，实际根据项目决定
			producer.setDeliveryMode(DeliveryMode.NON_PERSISTENT);
			
			// 构造消息，此处写死，项目就是参数，或者方法获取
			sendMessage(session, producer);
			
			session.commit();
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

	private static void sendMessage(Session session, MessageProducer producer) {
		// TODO Auto-generated method stub
	
		for (int i = 1; i <= SEND_NUMBER; i++) {
			TextMessage message;
			try {
				message = session.createTextMessage("ActiveMq 发送的消息"+ i);
				producer.send(message);
			} catch (JMSException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			System.out.println("发送消息：ActiveMq 发送的消息" + i);
		}
	}
}