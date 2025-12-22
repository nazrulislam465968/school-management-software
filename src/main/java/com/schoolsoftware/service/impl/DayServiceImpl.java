package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.DayDto;
import com.schoolsoftware.entity.DayEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.DayRepository;
import com.schoolsoftware.service.DayService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DayServiceImpl implements DayService {

    private final DayRepository dayRepository;

    @Override
    public List<DayEntity> getAllDays() {
        return dayRepository.findAll();
    }

    @Override
    public DayEntity createDay(DayDto dto) {

        if (dayRepository.existsByDayName(dto.getDayName())) {
            throw new DuplicateResourceException(
                "Day already exists: " + dto.getDayName()
            );
        }

        DayEntity entity = new DayEntity();
        entity.setDayName(dto.getDayName());
        entity.setDescription(dto.getDescription());

        return dayRepository.save(entity);
    }
}