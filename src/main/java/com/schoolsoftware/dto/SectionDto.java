package com.schoolsoftware.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SectionDto {

    @NotBlank(message = "Section name is required")
    @Size(max = 50)
    private String sectionName;

    @Size(max = 150)
    private String description;
}