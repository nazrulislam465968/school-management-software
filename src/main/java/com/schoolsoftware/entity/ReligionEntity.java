package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "religion_list_tbl")
@Getter
@Setter
public class ReligionEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "religion_id")
    private Long id;

    @Column(name = "religion_name", nullable = false, unique = true, length = 50)
    private String religionName;

    @Column(name = "description", length = 150)
    private String description;
}