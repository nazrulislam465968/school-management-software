package com.schoolsoftware.service;

import com.schoolsoftware.dto.ReligionDto;
import com.schoolsoftware.entity.ReligionEntity;

import java.util.List;

public interface ReligionService {

    List<ReligionEntity> getAllReligions();

    ReligionEntity createReligion(ReligionDto dto);
}