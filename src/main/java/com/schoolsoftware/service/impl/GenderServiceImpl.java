package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.GenderDto;
import com.schoolsoftware.entity.GenderEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.GenderRepository;
import com.schoolsoftware.service.GenderService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GenderServiceImpl implements GenderService {

    private final GenderRepository genderRepository;

    @Override
    public List<GenderEntity> getAllGenders() {
        return genderRepository.findAll();
    }

    @Override
    public GenderEntity createGender(GenderDto dto) {

        if (genderRepository.existsByGenderName(dto.getGenderName())) {
            throw new DuplicateResourceException(
                "Gender already exists: " + dto.getGenderName()
            );
        }

        GenderEntity entity = new GenderEntity();
        entity.setGenderName(dto.getGenderName());
        entity.setDescription(dto.getDescription());

        return genderRepository.save(entity);
    }
}