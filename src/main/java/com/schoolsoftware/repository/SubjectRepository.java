package com.schoolsoftware.repository;

import com.schoolsoftware.entity.SubjectEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SubjectRepository extends JpaRepository<SubjectEntity, Long> {

    boolean existsByClassEntity_IdAndSubjectCode(Long classId, String subjectCode);
}
