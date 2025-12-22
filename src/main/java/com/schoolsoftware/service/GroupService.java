package com.schoolsoftware.service;

import com.schoolsoftware.dto.GroupDto;
import com.schoolsoftware.entity.GroupEntity;

import java.util.List;

public interface GroupService {

    List<GroupEntity> getAllGroups();

    GroupEntity createGroup(GroupDto dto);
}