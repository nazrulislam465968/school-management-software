package com.schoolsoftware.service;

import com.schoolsoftware.dto.YearDto;
import com.schoolsoftware.entity.YearEntity;

import java.util.List;

public interface YearService {

    List<YearEntity> getAllYears();

    YearEntity createYear(YearDto dto);
}

