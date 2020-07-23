package us.audici.umgt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import us.audici.umgt.Storage.StorageProperties;

@SpringBootApplication
@EnableResourceServer
@EnableConfigurationProperties(StorageProperties.class)
public class UsermanagementApplication {

    public static void main(String[] args) {
        SpringApplication.run(UsermanagementApplication.class, args);
    }

}
