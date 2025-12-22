package com.schoolsoftware.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "month_list_tbl")
@Getter
@Setter
public class MonthEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "month_id")
    private Long id;

    @Column(name = "month_name", nullable = false, unique = true, length = 50)
    private String monthName;

    @Column(name = "month_number", nullable = false, unique = true, length = 10)
    private int monthSerNo;


    @Column(name = "description", length = 150)
    private String description;
}