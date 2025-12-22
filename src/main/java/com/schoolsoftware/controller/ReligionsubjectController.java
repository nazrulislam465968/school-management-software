package com.schoolsoftware.controller;

import com.schoolsoftware.dto.ReligionsubjectDto;
import com.schoolsoftware.entity.ReligionsubjectEntity;
import com.schoolsoftware.service.ReligionsubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/religionsubjects")
@RequiredArgsConstructor
public class ReligionsubjectController {

    private final ReligionsubjectService service;

    @GetMapping
    public List<ReligionsubjectEntity> getAll() {
        return service.getAll();
    }

    @PostMapping
    public ResponseEntity<ReligionsubjectEntity> create(@RequestBody ReligionsubjectDto dto) {
        ReligionsubjectEntity entity = service.create(dto);
        return new ResponseEntity<>(entity, HttpStatus.CREATED);
    }
}
