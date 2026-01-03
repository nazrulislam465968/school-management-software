package com.schoolsoftware.service;

import com.schoolsoftware.dto.ClassDto;

import java.util.List;

public interface ClassService {

    ClassDto create(ClassDto dto);

    List<ClassDto> getAll();

    ClassDto getById(Long id);

    void delete(Long id);
}
