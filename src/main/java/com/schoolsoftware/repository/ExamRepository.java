package com.schoolsoftware.repository;

import com.schoolsoftware.entity.ExamEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ExamRepository extends JpaRepository<ExamEntity, Long> {

    Optional<ExamEntity> findByExamName(String examName);

    boolean existsByExamName(String examName);
}