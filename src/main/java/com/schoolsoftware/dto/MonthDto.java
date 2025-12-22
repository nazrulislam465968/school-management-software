package com.schoolsoftware.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MonthDto {

    @NotBlank(message = "Month is required")
    @Size(max = 50)
    private String MonthName;

    @Size(max = 150)
    private String description;
}