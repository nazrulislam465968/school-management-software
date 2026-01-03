package com.schoolsoftware.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ClassDto {

    private Long id;

    @NotBlank
    @Size(max = 50)
    private String className;

    @NotBlank
    @Size(max = 50)
    private String classNameBn;

    @NotBlank
    @Size(max = 20)
    private String classCode;

    private String description;
}
