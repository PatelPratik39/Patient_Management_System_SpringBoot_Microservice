package com.pm.billingservice;

import jakarta.annotation.PostConstruct;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class BillingServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(BillingServiceApplication.class, args);
        System.out.println("Billing Service Application Started Successfully.. ✅✅✅"  );
    }
    @PostConstruct
    public void init() {
        System.out.println("🔥 Billing Service has started successfully");
    }


}