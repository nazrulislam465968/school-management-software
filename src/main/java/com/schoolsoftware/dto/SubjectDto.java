package com.schoolsoftware.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubjectDto {
    private Long classId;
    private String subjectShortname;
    private String subjectShortnameBn;
    private String subjectFullname;
    private String subjectFullnameBn;
    private String subjectCode;
    private String description;
}
