package com.schoolsoftware.controller;

import com.schoolsoftware.dto.YearDto;
import com.schoolsoftware.entity.YearEntity;
import com.schoolsoftware.service.YearService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/years")
@RequiredArgsConstructor
public class YearController {

    private final YearService yearService;

    @GetMapping
    public ResponseEntity<List<YearEntity>> getAllYears() {
        return ResponseEntity.ok(yearService.getAllYears());
    }

    @PostMapping
    public ResponseEntity<YearEntity> createYear(@Valid @RequestBody YearDto dto) {
        YearEntity saved = yearService.createYear(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(saved);
    }
}
