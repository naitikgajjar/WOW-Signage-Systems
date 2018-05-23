package com.tss;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
@Configuration
//@EnableJpaRepositories(basePackages = "com.tss.repository")
@EntityScan(basePackages = "com.tss.model")
@ComponentScan(basePackages = "com.tss")
public class WowMasterApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(WowMasterApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(WowMasterApplication.class, args);
	}
}
