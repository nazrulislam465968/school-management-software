package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "gender_list_tbl")
@Getter
@Setter
public class GenderEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "gender_id")
    private Long id;

    @Column(name = "gender_name", nullable = false, unique = true, length = 50)
    private String genderName;

    @Column(name = "description", length = 150)
    private String description;
}