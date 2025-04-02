package com.pm.pateintservice.controller;

import com.pm.pateintservice.dto.PatientRequestDTO;
import com.pm.pateintservice.dto.PatientResponseDTO;
import com.pm.pateintservice.dto.validators.CreatePatientValidationGroup;
import com.pm.pateintservice.service.PatientService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import jakarta.validation.groups.Default;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import java.util.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/patients")
@Tag(name= "Patient", description = "RESTapi for managing patients")
public class PatientController {

    private final PatientService patientService;

//    GET restAPI
    @GetMapping
    @Operation(summary = "Get Patients")
    public ResponseEntity<List<PatientResponseDTO>> getPatients() {
        List<PatientResponseDTO> patients = patientService.getPatients();
//        return ResponseEntity.ok().body(patients);
        return new ResponseEntity<>(patients, HttpStatus.OK);
    }
//  Post RESTAPI
    @PostMapping
    @Operation(summary = "Post Patient")
    public ResponseEntity<PatientResponseDTO> createPatient(@Validated({Default.class, CreatePatientValidationGroup.class}) @RequestBody PatientRequestDTO patientRequestDTO) {
        PatientResponseDTO createdPatient = patientService.createPatient(patientRequestDTO);
//        return ResponseEntity.ok().body(createdPatient);
        return  new ResponseEntity<>(createdPatient, HttpStatus.CREATED);
    }
//    PUT RestAPI
    @PutMapping("/{id}")
    @Operation(summary = "Update Patient based on ID")
    public ResponseEntity<PatientResponseDTO> updatePatient(@PathVariable UUID id, @Validated({Default.class}) @RequestBody PatientRequestDTO patientRequestDTO) {
        PatientResponseDTO patientResponseDTO = patientService.updatePatient(id, patientRequestDTO);
        return ResponseEntity.ok().body(patientResponseDTO);
//        return new ResponseEntity<>(patientResponseDTO, HttpStatus.OK);
    }

//    DELETE REST API
    @DeleteMapping("/{id}")
    @Operation(summary = "Delete Patient based on ID")
    public ResponseEntity<String> deletePatient(@PathVariable UUID id){
        patientService.deletePatient(id);
//        return ResponseEntity.noContent().build();
        return ResponseEntity.ok("Patient deleted Successfully with ID : " + id);
    }
}