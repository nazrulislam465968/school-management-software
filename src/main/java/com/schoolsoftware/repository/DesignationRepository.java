package com.schoolsoftware.repository;

import com.schoolsoftware.entity.DesignationEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface DesignationRepository extends JpaRepository<DesignationEntity, Long> {

    Optional<DesignationEntity> findByDesignationName(String designationName);

    boolean existsByDesignationName(String designationName);
}