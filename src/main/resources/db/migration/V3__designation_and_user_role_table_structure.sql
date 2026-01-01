/*--------------------------------------------------*
-- V3__designation_and_user_role_table_structure.sql                     |
----------------------------------------------------*/
-- 6. designation_list_tbl
CREATE TABLE IF NOT EXISTS designation_list_tbl (
    designation_id BIGSERIAL PRIMARY KEY,
    designation_name VARCHAR(50) NOT NULL UNIQUE,
    designation_name_bn VARCHAR(50) NOT NULL UNIQUE,
	designation_code VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);

-- 7. user_role_tbl
CREATE TABLE IF NOT EXISTS user_role_tbl (
    user_role_id BIGSERIAL PRIMARY KEY,
    user_role_name VARCHAR(50) NOT NULL UNIQUE,
    user_role_name_bn VARCHAR(50) NOT NULL UNIQUE,
    user_role_code VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(150)
);