package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "subject_list_tbl",
       uniqueConstraints = {
           @UniqueConstraint(columnNames = {"class_id", "subject_code"}),
           @UniqueConstraint(columnNames = {"class_id", "subject_shortname"})
       })
@Getter
@Setter
public class SubjectEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "subject_id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "class_id", nullable = false)
    private ClassEntity classEntity; // assuming ClassEntity exists

    @Column(name = "subject_shortname", nullable = false, length = 20)
    private String subjectShortname;

    @Column(name = "subject_shortname_bn", nullable = false, length = 20)
    private String subjectShortnameBn;

    @Column(name = "subject_fullname", nullable = false, length = 200)
    private String subjectFullname;

    @Column(name = "subject_fullname_bn", nullable = false, length = 200)
    private String subjectFullnameBn;

    @Column(name = "subject_code", nullable = false, length = 20)
    private String subjectCode;

    @Column(length = 255)
    private String description;
}
