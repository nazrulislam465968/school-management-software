package com.schoolsoftware.repository;

import com.schoolsoftware.entity.SubjectEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface SubjectRepository extends JpaRepository<SubjectEntity, Long> {

    Optional<SubjectEntity> findBySubjectName(String subjectName);

    boolean existsBySubjectName(String subjectName);
}