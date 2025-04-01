package com.pm.pateintservice.mapper;

import com.pm.pateintservice.dto.PatientResponseDTO;
import com.pm.pateintservice.model.Patient;

public class PatientMapper {

//    Convert DTO to Entity
//    public static PatientResponseDTO toEntity(PatientDTO patientDTO) {}

    //    Convert Entity to DTO
    public static PatientResponseDTO toDTO(Patient patient) {
        PatientResponseDTO patientDTO = new PatientResponseDTO();
        patientDTO.setId(patient.getId().toString());
        patientDTO.setName(patient.getName());
        patientDTO.setEmail(patient.getEmail());
        patientDTO.setDateOfBirth(patient.getDateOfBirth().toString());

        return patientDTO;
    }
}