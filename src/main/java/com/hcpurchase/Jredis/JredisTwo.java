package com.hcpurchase.Jredis;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.List;
import java.util.Map;
import java.util.Set;

public class JredisTwo {

    public static void main(String[] args) {
        ApplicationContext sJredis = new ClassPathXmlApplicationContext("spring-redis.xml");
        RedisTemplate redisTemplate = sJredis.getBean("redisTemplate", RedisTemplate.class);

        /*StringRedisTemplate的操作*/
        /*String的读写操作*/
        redisTemplate.delete("key1");
        redisTemplate.opsForValue().set("key1","value1");
        System.out.println(redisTemplate.opsForValue().get("key1"));
        System.out.println("--------------------------------------------------------------------------------------");

        /*List读写操作*/
        redisTemplate.delete("list");
        redisTemplate.opsForList().leftPush("list","value3");
        redisTemplate.opsForList().leftPush("list","value2");
        redisTemplate.opsForList().rightPush("list","value1");

        /*查出list集合内的数据*/
        List<String> listCrad = redisTemplate.opsForList().range("list", 0, -1);

        /*使用for循环打印到控制台*/
        for (String s:listCrad){
            System.out.println(s);
        }
        System.out.println("--------------------------------------------------------------------------------------");

        // Set读写
        redisTemplate.delete("s1");
        redisTemplate.opsForSet().add("s1", "A");
        redisTemplate.opsForSet().add("s1", "B");
        redisTemplate.opsForSet().add("s1", "C");
        Set<String> setCache = redisTemplate.opsForSet().members("s1");
        for (String s : setCache) {
            System.out.println(s);
        }
        System.out.println("---------------------------------------------------------------------------------------");
        // Hash读写
        redisTemplate.delete("h1");
        redisTemplate.opsForHash().put("h1", "address1", "北京");
        redisTemplate.opsForHash().put("h1", "address2", "上海");
        redisTemplate.opsForHash().put("h1", "address3", "河南");
        Map<String, String> hashCache = redisTemplate.opsForHash().entries("h1");
        for (Map.Entry entry : hashCache.entrySet()) {
            System.out.println(entry.getKey() + "-" + entry.getValue());
        }
        System.out.println("--------------------------------------------------------------------------------------");

    }

}
