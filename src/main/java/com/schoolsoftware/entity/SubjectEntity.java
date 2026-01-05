package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(
    name = "subject_list_tbl",
    uniqueConstraints = {
        @UniqueConstraint(columnNames = {"class_id", "subject_code"})
    }
)
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SubjectEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "subject_id")
    private Long subjectId;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(
        name = "class_id",
        nullable = false,
        foreignKey = @ForeignKey(name = "fk_subject_class")
    )
    private ClassEntity classEntity;

    @Column(name = "subject_shortname", nullable = false, length = 20)
    private String subjectShortName;

    @Column(name = "subject_shortname_bn", nullable = false, length = 20)
    private String subjectShortNameBn;

    @Column(name = "subject_fullname", nullable = false, length = 200)
    private String subjectFullName;

    @Column(name = "subject_fullname_bn", nullable = false, length = 200)
    private String subjectFullNameBn;

    @Column(name = "subject_code", nullable = false, length = 20)
    private String subjectCode;

    @Column(name = "description", length = 255)
    private String description;
}
