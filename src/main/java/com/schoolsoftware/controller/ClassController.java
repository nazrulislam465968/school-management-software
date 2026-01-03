package com.schoolsoftware.controller;

import com.schoolsoftware.dto.ClassDto;
import com.schoolsoftware.service.ClassService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/classes")
@RequiredArgsConstructor
public class ClassController {

    private final ClassService service;

    @PostMapping
    public ClassDto create(@Valid @RequestBody ClassDto dto) {
        return service.create(dto);
    }

    @GetMapping
    public List<ClassDto> getAll() {
        return service.getAll();
    }

    @GetMapping("/{id}")
    public ClassDto getById(@PathVariable Long id) {
        return service.getById(id);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        service.delete(id);
    }
}
