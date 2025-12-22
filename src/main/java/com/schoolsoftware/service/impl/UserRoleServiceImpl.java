package com.schoolsoftware.service.impl;

import com.schoolsoftware.dto.UserRoleDto;
import com.schoolsoftware.entity.UserRoleEntity;
import com.schoolsoftware.exception.DuplicateResourceException;
import com.schoolsoftware.repository.UserRoleRepository;
import com.schoolsoftware.service.UserRoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserRoleServiceImpl implements UserRoleService {

    private final UserRoleRepository userRoleRepository;

    @Override
    public List<UserRoleEntity> getAllUserRoles() {
        return userRoleRepository.findAll();
    }

    @Override
    public UserRoleEntity createUserRole(UserRoleDto dto) {

        if (userRoleRepository.existsByUserRoleName(dto.getUserRoleName())) {
            throw new DuplicateResourceException(
                "UserRole already exists: " + dto.getUserRoleName()
            );
        }

        UserRoleEntity entity = new UserRoleEntity();
        entity.setUserRoleName(dto.getUserRoleName());
        entity.setDescription(dto.getDescription());

        return userRoleRepository.save(entity);
    }
}