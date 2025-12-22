package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "bloodgroup_list_tbl")
@Getter
@Setter
public class BloodgroupEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "blood_group_id")
    private Long id;

    @Column(name = "blood_group_type", nullable = false, unique = true, length = 50)
    private String bloodgroupType;

    @Column(name = "description", length = 150)
    private String description;
}