package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(
    name = "class_list_tbl",
    uniqueConstraints = {
        @UniqueConstraint(columnNames = "class_name"),
        @UniqueConstraint(columnNames = "class_name_bn"),
        @UniqueConstraint(columnNames = "class_code")
    }
)
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ClassEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "class_id")
    private Long id;

    @Column(name = "class_name", nullable = false, unique = true, length = 50)
    private String className;

    @Column(name = "class_name_bn", nullable = false, unique = true, length = 50)
    private String classNameBn;

    @Column(name = "class_code", nullable = false, unique = true, length = 20)
    private String classCode;

    @Column(name = "description", length = 150)
    private String description;
}
