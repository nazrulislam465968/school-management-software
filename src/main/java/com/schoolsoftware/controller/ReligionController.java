package com.schoolsoftware.controller;

import com.schoolsoftware.dto.ReligionDto;
import com.schoolsoftware.entity.ReligionEntity;
import com.schoolsoftware.service.ReligionService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/religions")
@RequiredArgsConstructor
public class ReligionController {

    private final ReligionService religionService;

    @GetMapping
    public List<ReligionEntity> getAllReligions() {
        return religionService.getAllReligions();
    }

    @PostMapping
    public ReligionEntity createReligion(@Valid @RequestBody ReligionDto dto) {
        return religionService.createReligion(dto);
    }
}