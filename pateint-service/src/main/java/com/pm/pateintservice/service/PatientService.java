package com.pm.pateintservice.service;

import com.pm.pateintservice.dto.PatientRequestDTO;
import com.pm.pateintservice.exceptions.EmailAlreadyExistsException;
import com.pm.pateintservice.exceptions.PatientNotFoundException;
import com.pm.pateintservice.grpc.BillingServiceGrpcClient;
import com.pm.pateintservice.mapper.PatientMapper;
import com.pm.pateintservice.model.Patient;
import com.pm.pateintservice.repository.PatientRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.pm.pateintservice.dto.PatientResponseDTO;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class PatientService {

    private final PatientRepository patientRepository;
    private final BillingServiceGrpcClient billingServiceGrpcClient;


//    Get All Patients
    public List<PatientResponseDTO> getPatients(){
        List<Patient> patients = patientRepository.findAll();
//        List<PatientResponseDTO> patientResponseDTOs = patients.stream().map(PatientMapper::toDTO).toList();
//        return patientResponseDTOs;
        return patients.stream()
                .map(PatientMapper::toDTO).toList();
    }

//    Create Patients
    public PatientResponseDTO createPatient(PatientRequestDTO patientRequestDTO) {
        if(patientRepository.existsByEmail(patientRequestDTO.getEmail())) {
            throw new EmailAlreadyExistsException("A patient with this email already exists " + patientRequestDTO.getEmail());
        }
        Patient newPatient = patientRepository.save(PatientMapper.toEntity(patientRequestDTO));
        billingServiceGrpcClient.createBillingAccount(newPatient.getId().toString(), newPatient.getName(), newPatient.getEmail());
        return PatientMapper.toDTO(newPatient);  //convert entity to DTO class
    }

//    Update Patient
    public PatientResponseDTO updatePatient(UUID id,PatientRequestDTO patientRequestDTO) {
        Patient patient = patientRepository.findById(id).orElseThrow(() -> new PatientNotFoundException("Patient not found based on ID: " + id));
        if(patientRepository.existsByEmailAndIdNot(patientRequestDTO.getEmail(),id)) {
            throw new EmailAlreadyExistsException("A patient with this email already exists " + patientRequestDTO.getEmail());
        }
//        update properties
        patient.setName(patientRequestDTO.getName());
        patient.setEmail(patientRequestDTO.getEmail());
        patient.setAddress(patientRequestDTO.getAddress());
        patient.setDateOfBirth(LocalDate.parse(patientRequestDTO.getDateOfBirth()));

//        need to save updated patient to repository
        Patient updatedPatient = patientRepository.save(patient);

    return PatientMapper.toDTO(updatedPatient);
    }

//    Delete Patient
    public void deletePatient(UUID id) {
        if(patientRepository.existsById(id)){
            throw new PatientNotFoundException("Patient not found based on ID: " + id);
        }
        patientRepository.deleteById(id);
    }

}