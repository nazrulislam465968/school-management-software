package com.schoolsoftware.controller;

import com.schoolsoftware.dto.SubjectDto;
import com.schoolsoftware.entity.SubjectEntity;
import com.schoolsoftware.service.SubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/subjects")
@RequiredArgsConstructor
public class SubjectController {

    private final SubjectService service;

    @GetMapping
    public List<SubjectEntity> getAll() {
        return service.getAll();
    }

    @PostMapping
    public ResponseEntity<SubjectEntity> create(@RequestBody SubjectDto dto) {
        SubjectEntity entity = service.create(dto);
        return new ResponseEntity<>(entity, HttpStatus.CREATED);
    }
}
