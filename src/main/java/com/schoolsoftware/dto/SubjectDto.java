package com.schoolsoftware.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SubjectDto {

    private Long subjectId;

    @NotNull
    private Long classId;

    @NotBlank
    @Size(max = 20)
    private String subjectShortName;

    @NotBlank
    @Size(max = 20)
    private String subjectShortNameBn;

    @NotBlank
    @Size(max = 200)
    private String subjectFullName;

    @NotBlank
    @Size(max = 200)
    private String subjectFullNameBn;

    @NotBlank
    @Size(max = 20)
    private String subjectCode;

    private String description;
}
