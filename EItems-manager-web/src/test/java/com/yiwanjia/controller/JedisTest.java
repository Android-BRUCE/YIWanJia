package com.yiwanjia.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.testng.annotations.Test;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class JedisTest {


    public void jedisTest(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:spring/applicationContext-*.xml");
        JedisConnectionFactory pool = (JedisConnectionFactory) applicationContext.getBean("connectionFactory");
        System.out.println("123123");
        String database = pool.getPassword();
        System.out.println(database);
        RedisConnection connection = pool.getConnection();
        Jedis nativeConnection = (Jedis) connection.getNativeConnection();
        String ping = nativeConnection.ping();
        System.out.println(ping);
        nativeConnection.close();
        connection.close();
//        Jedis jedis = pool.
//        String ping = jedis.ping();
//        System.out.println(ping);
//        pool.close();
//        jedis.close();
    }

    public void jedisTest2(){
        Jedis jedis = new Jedis("118.178.253.131", 888);
        String ping = jedis.ping();
        System.out.println(ping);
    }
}
