package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.ReligionsubjectDto;
import com.schoolsoftware.entity.ReligionsubjectEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.ReligionsubjectRepository;
import com.schoolsoftware.service.ReligionsubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReligionsubjectServiceImpl implements ReligionsubjectService {

    private final ReligionsubjectRepository repository;

    @Override
    public List<ReligionsubjectEntity> getAll() {
        return repository.findAll();
    }

    @Override
    public ReligionsubjectEntity create(ReligionsubjectDto dto) {
        if (repository.existsByReligionsubjectCode(dto.getReligionsubjectCode())) {
            throw new DuplicateResourceException("Religionsubject already exists: " + dto.getReligionsubjectCode());
        }
        ReligionsubjectEntity entity = new ReligionsubjectEntity();
        entity.setReligionCode(dto.getReligionCode());
        entity.setReligionName(dto.getReligionName());
        entity.setReligionsubjectCode(dto.getReligionsubjectCode());
        entity.setReligionsubjectName(dto.getReligionsubjectName());
        entity.setDescription(dto.getDescription());
        return repository.save(entity);
    }
}
