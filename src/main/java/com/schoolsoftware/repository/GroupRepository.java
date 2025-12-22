package com.schoolsoftware.repository;

import com.schoolsoftware.entity.GroupEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface GroupRepository extends JpaRepository<GroupEntity, Long> {

    Optional<GroupEntity> findByGroupName(String groupName);

    boolean existsByGroupName(String groupName);
}