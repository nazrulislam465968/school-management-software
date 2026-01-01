CREATE TABLE IF NOT EXISTS subject_list_tbl (
    subject_id BIGSERIAL PRIMARY KEY,

    class_id BIGINT NOT NULL
        REFERENCES class_list_tbl(class_id)
        ON DELETE CASCADE,

    subject_shortname VARCHAR(20) NOT NULL,
    subject_shortname_bn VARCHAR(20) NOT NULL,
    subject_fullname VARCHAR(200) NOT NULL,
    subject_fullname_bn VARCHAR(200) NOT NULL,
    subject_code VARCHAR(20) NOT NULL,
    description VARCHAR(255),

    UNIQUE (class_id, subject_code),
    UNIQUE (class_id, subject_shortname)
);

CREATE INDEX IF NOT EXISTS idx_subject_class_id
ON subject_list_tbl (class_id);
