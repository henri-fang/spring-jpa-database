package com.example.demo.config;

import org.flywaydb.core.Flyway;
import org.springframework.boot.autoconfigure.flyway.FlywayMigrationStrategy;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class FlywayBean {

    @Bean
    public FlywayMigrationStrategy migrationStrategy() {
        return Flyway::repair;
    }
}
