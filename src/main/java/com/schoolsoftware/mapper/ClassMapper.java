package com.schoolsoftware.mapper;

import com.schoolsoftware.dto.ClassDto;
import com.schoolsoftware.entity.ClassEntity;

public class ClassMapper {

    public static ClassEntity toEntity(ClassDto dto) {
        return ClassEntity.builder()
                .id(dto.getId())
                .className(dto.getClassName())
                .classNameBn(dto.getClassNameBn())
                .classCode(dto.getClassCode())
                .description(dto.getDescription())
                .build();
    }

    public static ClassDto toDto(ClassEntity entity) {
        return ClassDto.builder()
                .id(entity.getId())
                .className(entity.getClassName())
                .classNameBn(entity.getClassNameBn())
                .classCode(entity.getClassCode())
                .description(entity.getDescription())
                .build();
    }
}
