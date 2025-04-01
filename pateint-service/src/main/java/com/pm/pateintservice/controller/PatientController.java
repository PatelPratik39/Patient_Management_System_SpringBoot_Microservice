package com.pm.pateintservice.controller;

import com.pm.pateintservice.dto.PatientRequestDTO;
import com.pm.pateintservice.dto.PatientResponseDTO;
import com.pm.pateintservice.service.PatientService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/patients")
public class PatientController {

    private final PatientService patientService;

//    GET restAPI
    @GetMapping
    public ResponseEntity<List<PatientResponseDTO>> getPatients() {
        List<PatientResponseDTO> patients = patientService.getPatients();
//        return ResponseEntity.ok().body(patients);
        return new ResponseEntity<>(patients, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<PatientResponseDTO> createPatient(@Valid @RequestBody PatientRequestDTO patientRequestDTO) {
        PatientResponseDTO createdPatient = patientService.createPatient(patientRequestDTO);
//        return ResponseEntity.ok().body(createdPatient);
        return  new ResponseEntity<>(createdPatient, HttpStatus.CREATED);
    }
}