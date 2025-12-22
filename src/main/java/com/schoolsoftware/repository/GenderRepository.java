package com.schoolsoftware.repository;

import com.schoolsoftware.entity.GenderEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface GenderRepository extends JpaRepository<GenderEntity, Long> {

    Optional<GenderEntity> findByGenderName(String genderName);

    boolean existsByGenderName(String genderName);
}