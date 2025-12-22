package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "class_list_tbl")
@Getter
@Setter
public class ClassEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "class_id")
    private Long id;

    @Column(name = "class_name", nullable = false, unique = true, length = 50)
    private String className;

    @Column(name = "description", length = 150)
    private String description;
}
