package com.schoolsoftware.service;

import com.schoolsoftware.dto.ReligionsubjectDto;
import com.schoolsoftware.entity.ReligionsubjectEntity;

import java.util.List;

public interface ReligionsubjectService {
    List<ReligionsubjectEntity> getAll();
    ReligionsubjectEntity create(ReligionsubjectDto dto);
}
