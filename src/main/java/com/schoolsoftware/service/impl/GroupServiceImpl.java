package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.GroupDto;
import com.schoolsoftware.entity.GroupEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.GroupRepository;
import com.schoolsoftware.service.GroupService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GroupServiceImpl implements GroupService {

    private final GroupRepository groupRepository;

    @Override
    public List<GroupEntity> getAllGroups() {
        return groupRepository.findAll();
    }

    @Override
    public GroupEntity createGroup(GroupDto dto) {

        if (groupRepository.existsByGroupName(dto.getGroupName())) {
            throw new DuplicateResourceException(
                "Group already exists: " + dto.getGroupName()
            );
        }

        GroupEntity entity = new GroupEntity();
        entity.setGroupName(dto.getGroupName());
        entity.setDescription(dto.getDescription());

        return groupRepository.save(entity);
    }
}