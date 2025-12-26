package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.SubjectDto;
import com.schoolsoftware.entity.SubjectEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.SubjectRepository;
import com.schoolsoftware.service.SubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SubjectServiceImpl implements SubjectService {

    private final SubjectRepository subjectRepository;

    @Override
    public List<SubjectEntity> getAllSubjects() {
        return subjectRepository.findAll();
    }

    @Override
    public SubjectEntity createSubject(SubjectDto dto) {

        if (subjectRepository.existsBySubjectName(dto.getSubjectName())) {
            throw new DuplicateResourceException(
                "Subject already exists: " + dto.getSubjectName()
            );
        }

        SubjectEntity entity = new SubjectEntity();
        entity.setSubjectName(dto.getSubjectName());
        entity.setDescription(dto.getDescription());

        return subjectRepository.save(entity);
    }
}