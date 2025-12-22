package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "designation_list_tbl")
@Getter
@Setter
public class DesignationEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "designation_id")
    private Long id;

    @Column(name = "designation_name", nullable = false, unique = true, length = 50)
    private String designationName;

    @Column(name = "description", length = 150)
    private String description;
}