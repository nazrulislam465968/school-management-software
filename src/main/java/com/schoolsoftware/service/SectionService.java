package com.schoolsoftware.service;

import com.schoolsoftware.dto.SectionDto;
import com.schoolsoftware.entity.SectionEntity;

import java.util.List;

public interface SectionService {

    List<SectionEntity> getAllSections();

    SectionEntity createSection(SectionDto dto);
}