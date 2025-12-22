package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.SubjectDto;
import com.schoolsoftware.entity.ClassEntity;
import com.schoolsoftware.entity.SubjectEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.ClassRepository;
import com.schoolsoftware.repository.SubjectRepository;
import com.schoolsoftware.service.SubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

@Service
@RequiredArgsConstructor
public class SubjectServiceImpl implements SubjectService {

    private final SubjectRepository subjectRepository;
    private final ClassRepository classRepository;

    @Override
    public List<SubjectEntity> getAll() {
        return subjectRepository.findAll();
    }

    @Override
    public SubjectEntity create(SubjectDto dto) {
        if (subjectRepository.existsByClassEntityIdAndSubjectCode(dto.getClassId(), dto.getSubjectCode())) {
            throw new DuplicateResourceException("Subject already exists for class: " + dto.getSubjectCode());
        }
        Long classId = Objects.requireNonNull(dto.getClassId(), "classId cannot be null");

        ClassEntity classEntity = classRepository.findById(classId)
                .orElseThrow(() -> new RuntimeException("Class not found: " + classId));

        SubjectEntity entity = new SubjectEntity();
        entity.setClassEntity(classEntity);
        entity.setSubjectShortname(dto.getSubjectShortname());
        entity.setSubjectShortnameBn(dto.getSubjectShortnameBn());
        entity.setSubjectFullname(dto.getSubjectFullname());
        entity.setSubjectFullnameBn(dto.getSubjectFullnameBn());
        entity.setSubjectCode(dto.getSubjectCode());
        entity.setDescription(dto.getDescription());

        return subjectRepository.save(entity);
    }
}
