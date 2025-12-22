package com.schoolsoftware.controller;

import com.schoolsoftware.dto.DayDto;
import com.schoolsoftware.entity.DayEntity;
import com.schoolsoftware.service.DayService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/days")
@RequiredArgsConstructor
public class DayController {

    private final DayService dayService;

    @GetMapping
    public List<DayEntity> getAllDays() {
        return dayService.getAllDays();
    }

    @PostMapping
    public DayEntity createDay(@Valid @RequestBody DayDto dto) {
        return dayService.createDay(dto);
    }
}