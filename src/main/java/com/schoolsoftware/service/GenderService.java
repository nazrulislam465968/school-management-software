package com.schoolsoftware.service;

import com.schoolsoftware.dto.GenderDto;
import com.schoolsoftware.entity.GenderEntity;

import java.util.List;

public interface GenderService {

    List<GenderEntity> getAllGenders();

    GenderEntity createGender(GenderDto dto);
}