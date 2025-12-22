package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.ClassDto;
import com.schoolsoftware.entity.ClassEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.ClassRepository;
import com.schoolsoftware.service.ClassService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ClassServiceImpl implements ClassService {

    private final ClassRepository classRepository;

    @Override
    public List<ClassEntity> getAllClasses() {
        return classRepository.findAll();
    }

    @Override
    public ClassEntity createClass(ClassDto dto) {

        if (classRepository.existsByClassName(dto.getClassName())) {
            throw new DuplicateResourceException(
                "Class already exists: " + dto.getClassName()
            );
        }

        ClassEntity entity = new ClassEntity();
        entity.setClassName(dto.getClassName());
        entity.setDescription(dto.getDescription());

        return classRepository.save(entity);
    }
}
