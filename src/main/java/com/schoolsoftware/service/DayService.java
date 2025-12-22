package com.schoolsoftware.service;

import com.schoolsoftware.dto.DayDto;
import com.schoolsoftware.entity.DayEntity;

import java.util.List;

public interface DayService {

    List<DayEntity> getAllDays();

    DayEntity createDay(DayDto dto);
}