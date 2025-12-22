package com.schoolsoftware.controller;

import com.schoolsoftware.dto.DesignationDto;
import com.schoolsoftware.entity.DesignationEntity;
import com.schoolsoftware.service.DesignationService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/designations")
@RequiredArgsConstructor
public class DesignationController {

    private final DesignationService designationService;

    @GetMapping
    public List<DesignationEntity> getAllDesignations() {
        return designationService.getAllDesignations();
    }

    @PostMapping
    public DesignationEntity createDesignation(@Valid @RequestBody DesignationDto dto) {
        return designationService.createDesignation(dto);
    }
}