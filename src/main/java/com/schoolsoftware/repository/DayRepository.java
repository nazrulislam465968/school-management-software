package com.schoolsoftware.repository;

import com.schoolsoftware.entity.DayEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface DayRepository extends JpaRepository<DayEntity, Long> {

    Optional<DayEntity> findByDayName(String dayName);

    boolean existsByDayName(String dayName);
}