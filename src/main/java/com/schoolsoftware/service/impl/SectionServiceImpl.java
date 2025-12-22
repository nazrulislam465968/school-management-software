package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.SectionDto;
import com.schoolsoftware.entity.SectionEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.SectionRepository;
import com.schoolsoftware.service.SectionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SectionServiceImpl implements SectionService {

    private final SectionRepository sectionRepository;

    @Override
    public List<SectionEntity> getAllSections() {
        return sectionRepository.findAll();
    }

    @Override
    public SectionEntity createSection(SectionDto dto) {

        if (sectionRepository.existsBySectionName(dto.getSectionName())) {
            throw new DuplicateResourceException(
                "Section already exists: " + dto.getSectionName()
            );
        }

        SectionEntity entity = new SectionEntity();
        entity.setSectionName(dto.getSectionName());
        entity.setDescription(dto.getDescription());

        return sectionRepository.save(entity);
    }
}