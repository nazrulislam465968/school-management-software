package com.schoolsoftware.service;

import com.schoolsoftware.dto.MonthDto;
import com.schoolsoftware.entity.MonthEntity;

import java.util.List;

public interface MonthService {

    List<MonthEntity> getAllMonths();

    MonthEntity createMonth(MonthDto dto);
}