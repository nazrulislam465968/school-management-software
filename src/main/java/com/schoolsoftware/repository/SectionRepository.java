package com.schoolsoftware.repository;

import com.schoolsoftware.entity.SectionEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface SectionRepository extends JpaRepository<SectionEntity, Long> {

    Optional<SectionEntity> findBySectionName(String sectionName);

    boolean existsBySectionName(String sectionName);
}