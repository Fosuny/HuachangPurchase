package Jredis;

import redis.clients.jedis.Jedis;

public class OneJredis {

    public static void main(String[] args) {

        Jedis jedis = new Jedis("192.168.124.128",6379);
        System.out.println(jedis.ping());
        jedis.set("name","zs");
        System.out.println(jedis.get("name"));

    }

}
