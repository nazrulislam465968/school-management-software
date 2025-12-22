package com.schoolsoftware.service;

import com.schoolsoftware.dto.ClassDto;
import com.schoolsoftware.entity.ClassEntity;

import java.util.List;

public interface ClassService {

    List<ClassEntity> getAllClasses();

    ClassEntity createClass(ClassDto dto);
}
