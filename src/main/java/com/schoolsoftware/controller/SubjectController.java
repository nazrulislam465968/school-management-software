package com.schoolsoftware.controller;

import com.schoolsoftware.dto.SubjectDto;
import com.schoolsoftware.entity.SubjectEntity;
import com.schoolsoftware.service.SubjectService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/subjects")
@RequiredArgsConstructor
public class SubjectController {

    private final SubjectService subjectService;

    @GetMapping
    public List<SubjectEntity> getAllSubjects() {
        return subjectService.getAllSubjects();
    }

    @PostMapping
    public SubjectEntity createSubject(@Valid @RequestBody SubjectDto dto) {
        return subjectService.createSubject(dto);
    }
}