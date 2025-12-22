package com.schoolsoftware.repository;

import com.schoolsoftware.entity.ReligionEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ReligionRepository extends JpaRepository<ReligionEntity, Long> {

    Optional<ReligionEntity> findByReligionName(String religionName);

    boolean existsByReligionName(String religionName);
}