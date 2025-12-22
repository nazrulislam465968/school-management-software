package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "religionsubject_list_tbl")
@Getter
@Setter
public class ReligionsubjectEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "religionsubject_id")
    private Long id;

    @Column(name = "religion_code", nullable = false, unique = true, length = 20)
    private String religionCode;

    @Column(name = "religion_name", nullable = false, length = 100)
    private String religionName;

    @Column(name = "religionsubject_code", nullable = false, unique = true, length = 20)
    private String religionsubjectCode;

    @Column(name = "religionsubject_name", nullable = false, length = 200)
    private String religionsubjectName;

    @Column(length = 255)
    private String description;
}
