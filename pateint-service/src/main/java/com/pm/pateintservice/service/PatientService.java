package com.pm.pateintservice.service;

import com.pm.pateintservice.mapper.PatientMapper;
import com.pm.pateintservice.model.Patient;
import com.pm.pateintservice.repository.PatientRepository;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.pm.pateintservice.dto.PatientResponseDTO;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class PatientService {

    private final PatientRepository patientRepository;

    public List<PatientResponseDTO> getPatients(){
        List<Patient> patients = patientRepository.findAll();
//        List<PatientResponseDTO> patientResponseDTOs = patients.stream().map(PatientMapper::toDTO).toList();
//        return patientResponseDTOs;
        return patients.stream()
                .map(PatientMapper::toDTO).toList();
    }

}