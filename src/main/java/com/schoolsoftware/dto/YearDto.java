package com.schoolsoftware.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public class YearDto {

    @NotBlank(message = "Year value cannot be empty")
    @Size(min = 4, max = 4, message = "Year must be 4 digits")
    private String yearValue;

    private String description;

    // getters & setters
    public String getYearValue() {
        return yearValue;
    }

    public void setYearValue(String yearValue) {
        this.yearValue = yearValue;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
