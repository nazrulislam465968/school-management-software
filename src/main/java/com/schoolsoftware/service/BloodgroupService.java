package com.schoolsoftware.service;

import com.schoolsoftware.dto.BloodgroupDto;
import com.schoolsoftware.entity.BloodgroupEntity;

import java.util.List;

public interface BloodgroupService {

    List<BloodgroupEntity> getAllBloodgroups();

    BloodgroupEntity createBloodgroup(BloodgroupDto dto);
}