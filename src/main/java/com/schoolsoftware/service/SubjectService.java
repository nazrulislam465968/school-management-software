package com.schoolsoftware.service;

import com.schoolsoftware.dto.SubjectDto;
import com.schoolsoftware.entity.SubjectEntity;

import java.util.List;

public interface SubjectService {
    List<SubjectEntity> getAll();
    SubjectEntity create(SubjectDto dto);
}
