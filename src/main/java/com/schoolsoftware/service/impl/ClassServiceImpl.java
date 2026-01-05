package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.ClassDto;
import com.schoolsoftware.entity.ClassEntity;
import com.schoolsoftware.exception.ResourceNotFoundException;
import com.schoolsoftware.mapper.ClassMapper;
import com.schoolsoftware.repository.ClassRepository;
import com.schoolsoftware.service.ClassService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

@SuppressWarnings("null") // VS Code / JPA false positive
@Service
@RequiredArgsConstructor
public class ClassServiceImpl implements ClassService {

    private final ClassRepository repository;

    @Override
    public ClassDto create(ClassDto dto) {

        ClassDto safeDto = Objects.requireNonNull(
                dto, "ClassDto must not be null"
        );

        if (repository.existsByClassCode(safeDto.getClassCode())) {
            throw new RuntimeException("Class code already exists");
        }

        ClassEntity entity = ClassMapper.toEntity(safeDto);
        // ClassEntity savedEntity = repository.save(entity);
        ClassEntity savedEntity = Objects.requireNonNull(repository.save(entity));

        return ClassMapper.toDto(savedEntity);
    }

    @Override
    public List<ClassDto> getAll() {
        return repository.findAll()
                .stream()
                .map(ClassMapper::toDto)
                .toList();
    }

    @Override
    public ClassDto getById(Long id) {

        Long safeId = Objects.requireNonNull(
                id, "Class ID must not be null"
        );

        ClassEntity entity = repository.findById(safeId)
                .orElseThrow(() ->
                        new ResourceNotFoundException(
                                "Class not found with id: " + safeId
                        )
                );

        return ClassMapper.toDto(entity);
    }

    @Override
    public void delete(Long id) {

        Long safeId = Objects.requireNonNull(
                id, "Class ID must not be null"
        );

        if (!repository.existsById(safeId)) {
            throw new ResourceNotFoundException(
                    "Class not found with id: " + safeId
            );
        }

        repository.deleteById(safeId);
    }
}
