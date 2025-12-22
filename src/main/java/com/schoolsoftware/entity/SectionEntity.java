package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "section_list_tbl")
@Getter
@Setter
public class SectionEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "section_id")
    private Long id;

    @Column(name = "section_name", nullable = false, unique = true, length = 50)
    private String sectionName;

    @Column(name = "description", length = 150)
    private String description;
}