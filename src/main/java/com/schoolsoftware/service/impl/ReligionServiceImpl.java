package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.ReligionDto;
import com.schoolsoftware.entity.ReligionEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.ReligionRepository;
import com.schoolsoftware.service.ReligionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReligionServiceImpl implements ReligionService {

    private final ReligionRepository religionRepository;

    @Override
    public List<ReligionEntity> getAllReligions() {
        return religionRepository.findAll();
    }

    @Override
    public ReligionEntity createReligion(ReligionDto dto) {

        if (religionRepository.existsByReligionName(dto.getReligionName())) {
            throw new DuplicateResourceException(
                "Religion already exists: " + dto.getReligionName()
            );
        }

        ReligionEntity entity = new ReligionEntity();
        entity.setReligionName(dto.getReligionName());
        entity.setDescription(dto.getDescription());

        return religionRepository.save(entity);
    }
}