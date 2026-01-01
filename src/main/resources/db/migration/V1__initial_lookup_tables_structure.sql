/*----------------------------------------*
-- V1__initial_lookup_tables_structure.sql                     |
-----------------------------------------*/
-- 1. gender_list_tbl
CREATE TABLE IF NOT EXISTS gender_list_tbl (
    gender_id BIGSERIAL PRIMARY KEY,
    gender_name VARCHAR(20) NOT NULL UNIQUE,
    gender_name_bn VARCHAR(20) NOT NULL UNIQUE,
    gender_code VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 2. bloodgroup_list_tbl
CREATE TABLE IF NOT EXISTS bloodgroup_list_tbl (
    blood_group_id BIGSERIAL PRIMARY KEY,
    bloodgroup_type VARCHAR(20) NOT NULL UNIQUE,
    bloodgroup_type_bn VARCHAR(20) NOT NULL UNIQUE,
    bloodgroup_code VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 3. religion_list_tbl
CREATE TABLE IF NOT EXISTS religion_list_tbl (
    religion_id BIGSERIAL PRIMARY KEY,
    religion_name VARCHAR(50) NOT NULL UNIQUE,
    religion_name_bn VARCHAR(50) NOT NULL UNIQUE,
    religion_code VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 4. month_list_tbl
CREATE TABLE IF NOT EXISTS month_list_tbl (
    month_id BIGSERIAL PRIMARY KEY,
    month_name VARCHAR(20) NOT NULL UNIQUE,
    month_name_bn VARCHAR(20) NOT NULL UNIQUE,
    month_code VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(100)
);

-- 5. day_list_tbl
CREATE TABLE IF NOT EXISTS day_list_tbl (
    day_id BIGSERIAL PRIMARY KEY,
    day_name VARCHAR(20) NOT NULL UNIQUE,
    day_name_bn VARCHAR(20) NOT NULL UNIQUE,
    day_code VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(100)
);