package com.pm.pateintservice.exceptions;



import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import java.util.*;

@Slf4j
@ControllerAdvice
public class GlobalExceptionHandler{

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<Map<String, String>> handleValidationException(MethodArgumentNotValidException exception){

        log.error("MethodArgumentNotValidException {} ", exception.getMessage());

        Map<String, String> errors = new HashMap<>();
        exception.getBindingResult().getFieldErrors().forEach(error -> errors.put(error.getField(),error.getDefaultMessage()));

//        return ResponseEntity.badRequest().body(errors);
        return new ResponseEntity<>(errors, HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(EmailAlreadyExistsException.class)
    public ResponseEntity<Map<String, String>> handleEmailAlreadyExistsException(EmailAlreadyExistsException exception){

        log.error("Email address already exist {} ",exception.getMessage());

        Map<String, String> errors = new HashMap<>();
        errors.put("message", "Email already exists");
//        return ResponseEntity.badRequest().body(errors);
        return new ResponseEntity<>(errors, HttpStatus.CONFLICT);
    }

    @ExceptionHandler(PatientNotFoundException.class)
    public ResponseEntity<Map<String, String>> handlePatientNotFoundException(PatientNotFoundException exception){
        log.error("Patient not found based on ID:  {} ",exception.getMessage());
        Map<String, String> errors = new HashMap<>();
        errors.put("message", "Patient not found");
//        return ResponseEntity.notFound().build();
        return new ResponseEntity<>(errors, HttpStatus.NOT_FOUND);
    }
}