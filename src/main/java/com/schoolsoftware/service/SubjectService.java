package com.schoolsoftware.service;

import com.schoolsoftware.dto.SubjectDto;

import java.util.List;

public interface SubjectService {

    SubjectDto create(SubjectDto dto);

    List<SubjectDto> getAll();

    SubjectDto getById(Long id);

    void delete(Long id);
}
