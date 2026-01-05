package com.schoolsoftware.controller;

import com.schoolsoftware.dto.SubjectDto;
import com.schoolsoftware.service.SubjectService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/subjects")
@RequiredArgsConstructor
public class SubjectController {

    private final SubjectService service;

    @PostMapping
    public SubjectDto create(@Valid @RequestBody SubjectDto dto) {
        return service.create(dto);
    }

    @GetMapping
    public List<SubjectDto> getAll() {
        return service.getAll();
    }

    @GetMapping("/{id}")
    public SubjectDto getById(@PathVariable Long id) {
        return service.getById(id);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        service.delete(id);
    }
}

