package com.schoolsoftware.mapper;

import com.schoolsoftware.dto.SubjectDto;
import com.schoolsoftware.entity.ClassEntity;
import com.schoolsoftware.entity.SubjectEntity;

public class SubjectMapper {

    public static SubjectEntity toEntity(SubjectDto dto, ClassEntity classEntity) {
        return SubjectEntity.builder()
                .subjectId(dto.getSubjectId())
                .classEntity(classEntity)
                .subjectShortName(dto.getSubjectShortName())
                .subjectShortNameBn(dto.getSubjectShortNameBn())
                .subjectFullName(dto.getSubjectFullName())
                .subjectFullNameBn(dto.getSubjectFullNameBn())
                .subjectCode(dto.getSubjectCode())
                .description(dto.getDescription())
                .build();
    }

    public static SubjectDto toDto(SubjectEntity entity) {
        return SubjectDto.builder()
                .subjectId(entity.getSubjectId())
                .classId(entity.getClassEntity().getId())
                .subjectShortName(entity.getSubjectShortName())
                .subjectShortNameBn(entity.getSubjectShortNameBn())
                .subjectFullName(entity.getSubjectFullName())
                .subjectFullNameBn(entity.getSubjectFullNameBn())
                .subjectCode(entity.getSubjectCode())
                .description(entity.getDescription())
                .build();
    }
}
