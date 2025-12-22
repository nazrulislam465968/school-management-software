package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.YearDto;
import com.schoolsoftware.entity.YearEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.YearRepository;
import com.schoolsoftware.service.YearService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class YearServiceImpl implements YearService {

    private final YearRepository yearRepository;

    @Override
    public List<YearEntity> getAllYears() {
        return yearRepository.findAll();
    }

    @Override
    public YearEntity createYear(YearDto dto) {

        // STEP-A9: Duplicate check (NEW CODE)
        if (yearRepository.existsByYearValue(dto.getYearValue())) {
            throw new DuplicateResourceException(
                    "Academic year already exists: " + dto.getYearValue()
            );
        }

        // existing logic
        YearEntity entity = new YearEntity();
        entity.setYearValue(dto.getYearValue());
        entity.setDescription(dto.getDescription());

        return yearRepository.save(entity);
    }
}
