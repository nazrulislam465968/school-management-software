package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "exam_list_tbl")
@Getter
@Setter
public class ExamEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "exam_id")
    private Long id;

    @Column(name = "exam_name", nullable = false, unique = true, length = 50)
    private String examName;

    @Column(name = "description", length = 150)
    private String description;
}