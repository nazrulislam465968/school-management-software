package com.schoolsoftware.service;

import com.schoolsoftware.dto.DesignationDto;
import com.schoolsoftware.entity.DesignationEntity;

import java.util.List;

public interface DesignationService {

    List<DesignationEntity> getAllDesignations();

    DesignationEntity createDesignation(DesignationDto dto);
}