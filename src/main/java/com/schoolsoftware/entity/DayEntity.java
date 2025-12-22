package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "day_list_tbl")
@Getter
@Setter
public class DayEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "day_id")
    private Long id;

    @Column(name = "day_name", nullable = false, unique = true, length = 50)
    private String dayName;

    @Column(name = "day_number", nullable = false, unique = true, length = 10)
    private int daySerNo;

    @Column(name = "description", length = 150)
    private String description;
}