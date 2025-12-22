package com.schoolsoftware.controller;

import com.schoolsoftware.dto.ExamDto;
import com.schoolsoftware.entity.ExamEntity;
import com.schoolsoftware.service.ExamService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/exams")
@RequiredArgsConstructor
public class ExamController {

    private final ExamService examService;

    @GetMapping
    public List<ExamEntity> getAllExams() {
        return examService.getAllExams();
    }

    @PostMapping
    public ExamEntity createExam(@Valid @RequestBody ExamDto dto) {
        return examService.createExam(dto);
    }
}