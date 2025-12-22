-- ========================================================================================
-- V1__initial_tables.sql
-- School Management System
-- Initial Lookup Tables (PostgreSQL)
-- Author: Nazrul Islam
-- ========================================================================================

-- 1. designation_list_tbl
CREATE TABLE IF NOT EXISTS designation_list_tbl (
    designation_id BIGSERIAL PRIMARY KEY,
    designation_name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 2. user_role_tbl
CREATE TABLE IF NOT EXISTS user_role_tbl (
    user_role_id BIGSERIAL PRIMARY KEY,
    user_role_name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 3. gender_list_tbl
CREATE TABLE IF NOT EXISTS gender_list_tbl (
    gender_id BIGSERIAL PRIMARY KEY,
    gender_name VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 4. bloodgroup_list_tbl
CREATE TABLE IF NOT EXISTS bloodgroup_list_tbl (
    blood_group_id BIGSERIAL PRIMARY KEY,
    blood_group_type VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 5. religion_list_tbl
CREATE TABLE IF NOT EXISTS religion_list_tbl (
    religion_id BIGSERIAL PRIMARY KEY,
    religion_name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 6. class_list_tbl
CREATE TABLE IF NOT EXISTS class_list_tbl (
    class_id BIGSERIAL PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 7. section_list_tbl
CREATE TABLE IF NOT EXISTS section_list_tbl (
    section_id BIGSERIAL PRIMARY KEY,
    section_name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 8. group_list_tbl
CREATE TABLE IF NOT EXISTS group_list_tbl (
    group_id BIGSERIAL PRIMARY KEY,
    group_name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 9. year_list_tbl
CREATE TABLE IF NOT EXISTS year_list_tbl (
    year_id BIGSERIAL PRIMARY KEY,
    year_value VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 10. exam_list_tbl
CREATE TABLE IF NOT EXISTS exam_list_tbl (
    exam_id BIGSERIAL PRIMARY KEY,
    exam_name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 11. month_list_tbl
CREATE TABLE IF NOT EXISTS month_list_tbl (
    month_id BIGSERIAL PRIMARY KEY,
    month_name VARCHAR(20) NOT NULL UNIQUE,
    month_number INT NOT NULL UNIQUE,
    description VARCHAR(100)
);

-- 12. day_list_tbl
CREATE TABLE IF NOT EXISTS day_list_tbl (
    day_id BIGSERIAL PRIMARY KEY,
    day_name VARCHAR(20) NOT NULL UNIQUE,
    day_number INT NOT NULL UNIQUE,
    description VARCHAR(100)
);
