package com.schoolsoftware.controller;

import com.schoolsoftware.dto.SectionDto;
import com.schoolsoftware.entity.SectionEntity;
import com.schoolsoftware.service.SectionService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/sections")
@RequiredArgsConstructor
public class SectionController {

    private final SectionService sectionService;

    @GetMapping
    public List<SectionEntity> getAllSections() {
        return sectionService.getAllSections();
    }

    @PostMapping
    public SectionEntity createSection(@Valid @RequestBody SectionDto dto) {
        return sectionService.createSection(dto);
    }
}
