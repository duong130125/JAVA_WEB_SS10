package ra.session_10.config;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"ra.session_10.controller",
        "ra.session_10.service",
        "ra.session_10.repository"})
public class AppConfig {
    private String HOST_NAME = "dbasiaiks";
    private String API_KEY = "852926152316177";
    private String API_SECRET = "wLd8s3ZLy1ldlSqJDSs3pgf5xTQ";

    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver resolver = new
                InternalResourceViewResolver();
        resolver.setPrefix("/views/");
        resolver.setSuffix(".jsp");

        return resolver;
    }

    @Bean
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver mResolver = new CommonsMultipartResolver();
        mResolver.setDefaultEncoding("UTF-8");
        mResolver.setMaxUploadSizePerFile(1024 * 1024 * 10); //10MB
        mResolver.setMaxUploadSize(1024 * 1024 * 30); // 30MB
        return mResolver;
    }

    @Bean
    public Cloudinary cloudinary() {
        return new Cloudinary(ObjectUtils.asMap(
            "cloud_name", HOST_NAME,      // Tên cloud (trong tài khoản Cloudinary)
            "api_key", API_KEY,            // API key được cấp bởi Cloudinary
            "api_secret", API_SECRET,      // API secret tương ứng để xác thực
            "secure", true
        ));
    }
}