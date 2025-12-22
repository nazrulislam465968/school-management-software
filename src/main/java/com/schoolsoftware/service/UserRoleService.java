package com.schoolsoftware.service;

import com.schoolsoftware.dto.UserRoleDto;
import com.schoolsoftware.entity.UserRoleEntity;

import java.util.List;

public interface UserRoleService {

    List<UserRoleEntity> getAllUserRoles();

    UserRoleEntity createUserRole(UserRoleDto dto);
}