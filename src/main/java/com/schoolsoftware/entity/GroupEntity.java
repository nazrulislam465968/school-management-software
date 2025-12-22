package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "group_list_tbl")
@Getter
@Setter
public class GroupEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "group_id")
    private Long id;

    @Column(name = "group_name", nullable = false, unique = true, length = 50)
    private String groupName;

    @Column(name = "description", length = 150)
    private String description;
}