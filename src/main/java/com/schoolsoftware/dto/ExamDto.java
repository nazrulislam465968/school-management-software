package com.schoolsoftware.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ExamDto {

    @NotBlank(message = "Exam is required")
    @Size(max = 50)
    private String ExamName;

    @Size(max = 150)
    private String description;
}