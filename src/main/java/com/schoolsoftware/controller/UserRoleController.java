package com.schoolsoftware.controller;

import com.schoolsoftware.dto.UserRoleDto;
import com.schoolsoftware.entity.UserRoleEntity;
import com.schoolsoftware.service.UserRoleService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/userroles")
@RequiredArgsConstructor
public class UserRoleController {

    private final UserRoleService userRoleService;

    @GetMapping
    public List<UserRoleEntity> getAllUserRoles() {
        return userRoleService.getAllUserRoles();
    }

    @PostMapping
    public UserRoleEntity createUserRole(@Valid @RequestBody UserRoleDto dto) {
        return userRoleService.createUserRole(dto);
    }
}