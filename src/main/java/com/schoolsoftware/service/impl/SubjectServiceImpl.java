package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.SubjectDto;
import com.schoolsoftware.entity.ClassEntity;
import com.schoolsoftware.entity.SubjectEntity;
import com.schoolsoftware.exception.ResourceNotFoundException;
import com.schoolsoftware.mapper.SubjectMapper;
import com.schoolsoftware.repository.ClassRepository;
import com.schoolsoftware.repository.SubjectRepository;
import com.schoolsoftware.service.SubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@SuppressWarnings("null") // VS Code / JPA false positive
@Service
@RequiredArgsConstructor
public class SubjectServiceImpl implements SubjectService {

    private final SubjectRepository subjectRepository;
    private final ClassRepository classRepository;

    @Override
    public SubjectDto create(SubjectDto dto) {

        // ---------- Null validation ----------
        if (dto == null) {
            throw new IllegalArgumentException("SubjectDto must not be null");
        }

        if (dto.getClassId() == null) {
            throw new IllegalArgumentException("Class ID must not be null");
        }

        // ---------- Fetch Class ----------
        ClassEntity classEntity = classRepository.findById(dto.getClassId())
                .orElseThrow(() ->
                        new ResourceNotFoundException(
                                "Class not found with id: " + dto.getClassId()
                        )
                );

        // ---------- Duplicate check ----------
        if (subjectRepository.existsByClassEntity_IdAndSubjectCode(
                classEntity.getId(),
                dto.getSubjectCode()
        )) {
            throw new RuntimeException(
                    "Subject code already exists for this class"
            );
        }

        // ---------- Save ----------
        SubjectEntity entity = SubjectMapper.toEntity(dto, classEntity);
        SubjectEntity savedEntity = subjectRepository.save(entity);

        // ---------- Return DTO ----------
        return SubjectMapper.toDto(savedEntity);
    }

    @Override
    public List<SubjectDto> getAll() {
        return subjectRepository.findAll()
                .stream()
                .map(SubjectMapper::toDto)
                .toList();
    }

    @Override
    public SubjectDto getById(Long id) {

        if (id == null) {
            throw new IllegalArgumentException("Subject ID must not be null");
        }

        SubjectEntity entity = subjectRepository.findById(id)
                .orElseThrow(() ->
                        new ResourceNotFoundException(
                                "Subject not found with id: " + id
                        )
                );

        return SubjectMapper.toDto(entity);
    }

    @Override
    public void delete(Long id) {

        if (id == null) {
            throw new IllegalArgumentException("Subject ID must not be null");
        }

        if (!subjectRepository.existsById(id)) {
            throw new ResourceNotFoundException(
                    "Subject not found with id: " + id
            );
        }

        subjectRepository.deleteById(id);
    }
}
