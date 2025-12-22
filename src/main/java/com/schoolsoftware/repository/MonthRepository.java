package com.schoolsoftware.repository;

import com.schoolsoftware.entity.MonthEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface MonthRepository extends JpaRepository<MonthEntity, Long> {

    Optional<MonthEntity> findByMonthName(String monthName);

    boolean existsByMonthName(String monthName);
}