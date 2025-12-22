package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "user_role_tbl")
@Getter
@Setter
public class UserRoleEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_role_id")
    private Long id;

    @Column(name = "user_role_name", nullable = false, unique = true, length = 50)
    private String userRoleName;

    @Column(name = "description", length = 150)
    private String description;
}