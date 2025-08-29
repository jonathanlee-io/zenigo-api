package io.jonathanlee.zenigo_api;

import org.springframework.boot.SpringApplication;

public class TestZenigoApiApplication {

	public static void main(String[] args) {
		SpringApplication.from(ZenigoApiApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
