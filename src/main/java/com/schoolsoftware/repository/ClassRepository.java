package com.schoolsoftware.repository;

import com.schoolsoftware.entity.ClassEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ClassRepository extends JpaRepository<ClassEntity, Long> {

    Optional<ClassEntity> findByClassCode(String classCode);

    boolean existsByClassCode(String classCode);
}
