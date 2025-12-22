package com.schoolsoftware.controller;

import com.schoolsoftware.dto.MonthDto;
import com.schoolsoftware.entity.MonthEntity;
import com.schoolsoftware.service.MonthService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/months")
@RequiredArgsConstructor
public class MonthController {

    private final MonthService monthService;

    @GetMapping
    public List<MonthEntity> getAllMonths() {
        return monthService.getAllMonths();
    }

    @PostMapping
    public MonthEntity createMonth(@Valid @RequestBody MonthDto dto) {
        return monthService.createMonth(dto);
    }
}