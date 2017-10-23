package com.et.dubbodemo.id.service;

import org.apache.log4j.Logger;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * dubbo服务提供者
 */
public class Provider
{
    private static final Logger log = Logger.getLogger(Provider.class);
    private static volatile boolean running = false;
    static ClassPathXmlApplicationContext context;

    /**
     * 加载spring配置，启动服务
     */
    public static void main(String[] args) throws Exception
    {
        log.info("########### id-service dubbo服务准备启动！###########");

        // 启动dubbo服务
        context = new ClassPathXmlApplicationContext("spring.xml");
        context.start();
        running = true;
        log.info("########### id-service dubbo服务启动成功！###########");

        // 关闭dubbo服务后运行的代码
        Runtime.getRuntime().addShutdownHook(new Thread() {
            public void run() {
                if (context != null) {
                    context.stop();
                    context.close();
                    context = null;
                }
                log.info("########### id-service dubbo服务已经停止！###########");

                synchronized (Provider.class) {
                    running = false;
                    Provider.class.notify();
                }
            }
        });

        // 保证dubbo服务一直开着
        synchronized (Provider.class) {
            while (running) {
                try {
                    Provider.class.wait();
                }
                catch (Throwable e) {}
            }
        }
    }
}
