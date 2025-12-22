package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "year_list_tbl")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class YearEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "year_id")
    private Long id;

    @Column(name = "year_value", nullable = false, unique = true, length = 20)
    private String yearValue;

    @Column(length = 150)
    private String description;
}
