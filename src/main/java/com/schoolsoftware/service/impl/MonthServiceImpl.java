package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.MonthDto;
import com.schoolsoftware.entity.MonthEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.MonthRepository;
import com.schoolsoftware.service.MonthService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MonthServiceImpl implements MonthService {

    private final MonthRepository monthRepository;

    @Override
    public List<MonthEntity> getAllMonths() {
        return monthRepository.findAll();
    }

    @Override
    public MonthEntity createMonth(MonthDto dto) {

        if (monthRepository.existsByMonthName(dto.getMonthName())) {
            throw new DuplicateResourceException(
                "Month already exists: " + dto.getMonthName()
            );
        }

        MonthEntity entity = new MonthEntity();
        entity.setMonthName(dto.getMonthName());
        entity.setDescription(dto.getDescription());

        return monthRepository.save(entity);
    }
}