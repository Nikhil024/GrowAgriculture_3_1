package com.grow.agriculture.configuration;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.Database;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import java.util.Collections;
import java.util.Properties;

@Configuration
@EnableWebMvc
@ComponentScan("com.grow.agriculture.controllers")
@EnableJpaRepositories(basePackages = "com.grow.agriculture.repository")
@PropertySource("file:///C:/application.properties")
public class GrowAgricultureContextConfiguration implements WebMvcConfigurer {


	@Value("${datasource.driver.class.name}")
	private String driverClassName;
	
	@Value("${datasource.url.name}")
	private String url;
	
	@Value("${datasource.username}")
	private String username;
	
	@Value("${datasource.password}")
	private String password;

	@Value("${jpa.database.platform.name}")
	private String databasePlatform;
	
	@Value("${jpa.persistance.validation.mode.name}")
	private String validationMode;
	
	@Value("${jpa.persistance.validation.mode.value}")
	private String validationModeValue;
	
	@Value("${hibernate.tables.DDL.strategy.value}")
	private String hibernateDDLGenerationStratergy;
	
	@Value("${hibernate.dialect.value}")
	private String hibernateDailect;
	
	@Value("${hibernate.show.sql.value}")
	private String showSQL;
	
	@Value("${hibernate.format.sql.value}")
	private String formatSQL;
	
	
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
	
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

	private BasicDataSource dataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName(driverClassName);
		dataSource.setUrl(url);
		dataSource.setUsername(username);
		dataSource.setPassword(password);
		return dataSource;
	}
	
	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
        HibernateJpaVendorAdapter hibernateJpa = new HibernateJpaVendorAdapter();
        hibernateJpa.setDatabasePlatform(databasePlatform);
        hibernateJpa.setShowSql(true);
        hibernateJpa.setGenerateDdl(true);
        hibernateJpa.setDatabase(Database.ORACLE);
        LocalContainerEntityManagerFactoryBean emf = new LocalContainerEntityManagerFactoryBean();
        emf.setDataSource(dataSource());
        emf.setPackagesToScan("com.grow.agriculture.model");
        emf.setJpaVendorAdapter(hibernateJpa);
        emf.setJpaPropertyMap(Collections.singletonMap(validationMode, validationModeValue));
        emf.setJpaProperties(jpaProperties());
        return emf;
    }
	
	private final Properties jpaProperties() {
		Properties hibernateProperties = new Properties();
		hibernateProperties.setProperty("hibernate.hbm2ddl.auto", hibernateDDLGenerationStratergy);
		hibernateProperties.setProperty("hibernate.dialect", hibernateDailect);
		hibernateProperties.put("hibernate.show_sql", showSQL);
		hibernateProperties.put("hibernate.format_sql", formatSQL);
		return hibernateProperties;
	}
    
    @Bean
    public JpaTransactionManager transactionManager() {
        JpaTransactionManager txnMgr = new JpaTransactionManager();
        txnMgr.setEntityManagerFactory(entityManagerFactory().getObject());
        return txnMgr;
    }

	@Bean
	public ResourceBundleMessageSource messageSource() {
		ResourceBundleMessageSource source = new ResourceBundleMessageSource();
		source.setBasename("file:///C:/messages");
		source.setUseCodeAsDefaultMessage(true);
		return source;
	}
}
