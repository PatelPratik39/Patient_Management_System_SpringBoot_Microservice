package com.pm.pateintservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class PatientServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(PatientServiceApplication.class, args);
		System.err.println("Patient Service Application Started SUCCESSFULLY ... ✅✅ ");
	}

}