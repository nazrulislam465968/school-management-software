package com.schoolsoftware.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubjectDto {

    @NotBlank(message = "Subject is required")
    @Size(max = 50)
    private String SubjectName;

    @Size(max = 150)
    private String description;
}