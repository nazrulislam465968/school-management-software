package com.schoolsoftware.controller;

import com.schoolsoftware.dto.BloodgroupDto;
import com.schoolsoftware.entity.BloodgroupEntity;
import com.schoolsoftware.service.BloodgroupService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/bloodgroups")
@RequiredArgsConstructor
public class BloodgroupController {

    private final BloodgroupService bloodgroupService;

    @GetMapping
    public List<BloodgroupEntity> getAllBloodgroups() {
        return bloodgroupService.getAllBloodgroups();
    }

    @PostMapping
    public BloodgroupEntity createBloodgroup(@Valid @RequestBody BloodgroupDto dto) {
        return bloodgroupService.createBloodgroup(dto);
    }
}