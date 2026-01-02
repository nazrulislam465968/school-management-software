/*------------------------------------------*
--V9__religionsubject_list_tbl_structure.sql
--Table No: 14
--------------------------------------------*/
CREATE TABLE religionsubject_list_tbl (
    religionsubject_id BIGSERIAL PRIMARY KEY,

    religion_id BIGINT NOT NULL
        REFERENCES religion_list_tbl(religion_id)
        ON DELETE CASCADE,

    subject_code VARCHAR(20) NOT NULL UNIQUE,
    subject_name VARCHAR(200) NOT NULL,
    description VARCHAR(150)
);