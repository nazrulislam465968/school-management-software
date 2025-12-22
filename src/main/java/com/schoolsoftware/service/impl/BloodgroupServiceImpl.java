package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.BloodgroupDto;
import com.schoolsoftware.entity.BloodgroupEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.BloodgroupRepository;
import com.schoolsoftware.service.BloodgroupService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BloodgroupServiceImpl implements BloodgroupService {

    private final BloodgroupRepository bloodgroupRepository;

    @Override
    public List<BloodgroupEntity> getAllBloodgroups() {
        return bloodgroupRepository.findAll();
    }

    @Override
    public BloodgroupEntity createBloodgroup(BloodgroupDto dto) {

        if (bloodgroupRepository.existsByBloodgroupType(dto.getBloodgroupType())) {
            throw new DuplicateResourceException(
                "Bloodgroup already exists: " + dto.getBloodgroupType()
            );
        }

        BloodgroupEntity entity = new BloodgroupEntity();
        entity.setBloodgroupType(dto.getBloodgroupType());
        entity.setDescription(dto.getBloodgroupType());

        return bloodgroupRepository.save(entity);
    }
}