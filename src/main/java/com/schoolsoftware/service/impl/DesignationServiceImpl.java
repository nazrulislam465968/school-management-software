package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.DesignationDto;
import com.schoolsoftware.entity.DesignationEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.DesignationRepository;
import com.schoolsoftware.service.DesignationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DesignationServiceImpl implements DesignationService {

    private final DesignationRepository designationRepository;

    @Override
    public List<DesignationEntity> getAllDesignations() {
        return designationRepository.findAll();
    }

    @Override
    public DesignationEntity createDesignation(DesignationDto dto) {

        if (designationRepository.existsByDesignationName(dto.getDesignationName())) {
            throw new DuplicateResourceException(
                "Designation already exists: " + dto.getDesignationName()
            );
        }

        DesignationEntity entity = new DesignationEntity();
        entity.setDesignationName(dto.getDesignationName());
        entity.setDescription(dto.getDescription());

        return designationRepository.save(entity);
    }
}