package com.pm.pateintservice.mapper;

import com.pm.pateintservice.dto.PatientRequestDTO;
import com.pm.pateintservice.dto.PatientResponseDTO;
import com.pm.pateintservice.model.Patient;

import java.time.LocalDate;

public class PatientMapper {

//    Convert DTO to Entity
    public static Patient toEntity(PatientRequestDTO  patientRequestDTO) {
        Patient patient = new Patient();
        patient.setName(patientRequestDTO.getName());
        patient.setEmail(patientRequestDTO.getEmail());
        patient.setAddress(patientRequestDTO.getAddress());
        patient.setDateOfBirth(LocalDate.parse(patientRequestDTO.getDateOfBirth()));
        patient.setRegisteredDate(LocalDate.parse(patientRequestDTO.getRegisteredDate()));

        return patient;  // return Entity/Model class
    }

    //    Convert Entity to DTO
    public static PatientResponseDTO toDTO(Patient patient) {
        PatientResponseDTO patientDTO = new PatientResponseDTO();
        patientDTO.setId(patient.getId().toString());
        patientDTO.setName(patient.getName());
        patientDTO.setEmail(patient.getEmail());
        patientDTO.setAddress(patient.getAddress());
        patientDTO.setDateOfBirth(patient.getDateOfBirth().toString());

        return patientDTO;  // return DTO class
    }
}