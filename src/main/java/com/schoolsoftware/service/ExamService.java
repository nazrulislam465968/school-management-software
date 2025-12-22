package com.schoolsoftware.service;

import com.schoolsoftware.dto.ExamDto;
import com.schoolsoftware.entity.ExamEntity;

import java.util.List;

public interface ExamService {

    List<ExamEntity> getAllExams();

    ExamEntity createExam(ExamDto dto);
}