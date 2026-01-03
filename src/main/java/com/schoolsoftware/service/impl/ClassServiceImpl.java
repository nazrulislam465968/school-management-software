package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.ClassDto;
import com.schoolsoftware.entity.ClassEntity;
import com.schoolsoftware.mapper.ClassMapper;
import com.schoolsoftware.repository.ClassRepository;
import com.schoolsoftware.service.ClassService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ClassServiceImpl implements ClassService {

    private final ClassRepository repository;

    @Override
    public ClassDto create(ClassDto dto) {

        if (repository.existsByClassCode(dto.getClassCode())) {
            throw new RuntimeException("Class code already exists");
        }

        ClassEntity entity = ClassMapper.toEntity(dto);
        return ClassMapper.toDto(repository.save(entity));
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
        ClassEntity entity = repository.findById(id)
                .orElseThrow(() -> new RuntimeException("Class not found"));
        return ClassMapper.toDto(entity);
    }

    @Override
    public void delete(Long id) {
        repository.deleteById(id);
    }
}
