/*-----------------------------------*
-- V5__academic_tables_structure.sql                     |
------------------------------------*/
-- 8. class_list_tbl
CREATE TABLE IF NOT EXISTS class_list_tbl (
    class_id BIGSERIAL PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL UNIQUE,
    class_name_bn VARCHAR(50) NOT NULL UNIQUE,
    class_code VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 9. section_list_tbl
CREATE TABLE IF NOT EXISTS section_list_tbl (
    section_id BIGSERIAL PRIMARY KEY,
    section_name VARCHAR(50) NOT NULL UNIQUE,
    section_name_bn VARCHAR(50) NOT NULL UNIQUE,
    section_code VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 10. group_list_tbl
CREATE TABLE IF NOT EXISTS group_list_tbl (
    group_id BIGSERIAL PRIMARY KEY,
    group_name VARCHAR(50) NOT NULL UNIQUE,
    group_name_bn VARCHAR(50) NOT NULL UNIQUE,
    group_code VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 11. year_list_tbl
CREATE TABLE IF NOT EXISTS year_list_tbl (
    year_id BIGSERIAL PRIMARY KEY,
    year_value VARCHAR(20) NOT NULL UNIQUE,
    year_value_bn VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 12. exam_list_tbl
CREATE TABLE IF NOT EXISTS exam_list_tbl (
    exam_id BIGSERIAL PRIMARY KEY,
    exam_name VARCHAR(50) NOT NULL UNIQUE,
    exam_name_bn VARCHAR(50) NOT NULL UNIQUE,
    exam_code VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);