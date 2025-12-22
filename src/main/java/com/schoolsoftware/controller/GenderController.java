package com.schoolsoftware.controller;

import com.schoolsoftware.dto.GenderDto;
import com.schoolsoftware.entity.GenderEntity;
import com.schoolsoftware.service.GenderService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/genders")
@RequiredArgsConstructor
public class GenderController {

    private final GenderService genderService;

    @GetMapping
    public List<GenderEntity> getAllGenders() {
        return genderService.getAllGenders();
    }

    @PostMapping
    public GenderEntity createGender(@Valid @RequestBody GenderDto dto) {
        return genderService.createGender(dto);
    }
}