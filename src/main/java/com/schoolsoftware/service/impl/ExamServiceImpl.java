package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.ExamDto;
import com.schoolsoftware.entity.ExamEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.ExamRepository;
import com.schoolsoftware.service.ExamService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ExamServiceImpl implements ExamService {

    private final ExamRepository examRepository;

    @Override
    public List<ExamEntity> getAllExams() {
        return examRepository.findAll();
    }

    @Override
    public ExamEntity createExam(ExamDto dto) {

        if (examRepository.existsByExamName(dto.getExamName())) {
            throw new DuplicateResourceException(
                "Exam already exists: " + dto.getExamName()
            );
        }

        ExamEntity entity = new ExamEntity();
        entity.setExamName(dto.getExamName());
        entity.setDescription(dto.getDescription());

        return examRepository.save(entity);
    }
}