package com.function.message.mq;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;
import javax.jms.TextMessage;

import org.apache.activemq.command.ActiveMQTextMessage;
import org.springframework.jms.support.converter.MessageConverter;

/**
 * 消息转换类
 *
 * @author Norman
 * @version 2014-3-4
 */
public class TextMsgConverter implements MessageConverter {

    /**
     * 转化本程序要发到MQ上的消息
     */
    public Message toMessage(Object obj, Session session) throws JMSException {

        ActiveMQTextMessage objMsg = null;

        if (obj instanceof String) {
            objMsg = (ActiveMQTextMessage) session.createTextMessage(obj.toString());
        }

        return objMsg;
    }

    /**
     * 转化MQ上过来的消息.
     */
    public Object fromMessage(Message msg) throws JMSException {
        String message = null;

        if (msg instanceof TextMessage) {
            message = ((TextMessage) msg).getText();
        }

        return message;
    }
}