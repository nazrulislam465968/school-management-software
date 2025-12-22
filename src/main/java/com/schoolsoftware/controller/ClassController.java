package com.schoolsoftware.controller;

import com.schoolsoftware.dto.ClassDto;
import com.schoolsoftware.entity.ClassEntity;
import com.schoolsoftware.service.ClassService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/classes")
@RequiredArgsConstructor
public class ClassController {

    private final ClassService classService;

    @GetMapping
    public List<ClassEntity> getAllClasses() {
        return classService.getAllClasses();
    }

    @PostMapping
    public ClassEntity createClass(@Valid @RequestBody ClassDto dto) {
        return classService.createClass(dto);
    }
}
