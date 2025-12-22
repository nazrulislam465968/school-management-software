package com.schoolsoftware.repository;

import com.schoolsoftware.entity.ReligionsubjectEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReligionsubjectRepository extends JpaRepository<ReligionsubjectEntity, Long> {
    boolean existsByReligionsubjectCode(String code);
}
