package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "subject_list_tbl")
@Getter
@Setter
public class SubjectEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "subject_id")
    private Long id;

    @Column(name = "subject_fullname", nullable = false, unique = true, length = 50)
    private String subjectName;

    @Column(name = "subject_fullname_bn", nullable = false, unique = true, length = 50)
    private String subjectNameBangla;

    @Column(name = "description", length = 150)
    private String description;
}