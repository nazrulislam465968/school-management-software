package com.schoolsoftware.repository;

import com.schoolsoftware.entity.SubjectEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SubjectRepository extends JpaRepository<SubjectEntity, Long> {
    boolean existsByClassEntityIdAndSubjectCode(Long classId, String subjectCode);
}
