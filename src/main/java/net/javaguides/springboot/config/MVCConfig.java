package net.javaguides.springboot.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.nio.file.Path;
import java.nio.file.Paths;

@Configuration
public class MVCConfig implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        Path employeeUploadFir = Paths.get("./images/employee-images");
        String employeeUploadPath = employeeUploadFir.toFile().getAbsolutePath();
        registry.addResourceHandler("/employee-images/**").addResourceLocations("file:/" + employeeUploadPath + "/");
    }
}
