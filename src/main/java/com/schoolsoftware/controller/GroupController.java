package com.schoolsoftware.controller;

import com.schoolsoftware.dto.GroupDto;
import com.schoolsoftware.entity.GroupEntity;
import com.schoolsoftware.service.GroupService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/groups")
@RequiredArgsConstructor
public class GroupController {

    private final GroupService groupService;

    @GetMapping
    public List<GroupEntity> getAllGroups() {
        return groupService.getAllGroups();
    }

    @PostMapping
    public GroupEntity createGroup(@Valid @RequestBody GroupDto dto) {
        return groupService.createGroup(dto);
    }
}