package com.schoolsoftware.repository;

import com.schoolsoftware.entity.BloodgroupEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface BloodgroupRepository extends JpaRepository<BloodgroupEntity, Long> {

    Optional<BloodgroupEntity> findByBloodgroupType(String bloodgroupType);

    boolean existsByBloodgroupType(String bloodgroupType);
}