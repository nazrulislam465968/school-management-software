package com.schoolsoftware.repository;

import com.schoolsoftware.entity.YearEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface YearRepository extends JpaRepository<YearEntity, Long> {

    boolean existsByYearValue(String yearValue);
}

