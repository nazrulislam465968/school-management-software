/*---------------------------------------
--V11__class_subjects_tbl_structure.sql--
----------------------------------------*/
CREATE TABLE IF NOT EXISTS class_subjects_tbl (
    class_subject_id BIGSERIAL PRIMARY KEY,
    
	class_id BIGINT NOT NULL
        REFERENCES class_list_tbl(class_id)
        ON DELETE CASCADE,
	
	group_id BIGINT NOT NULL
        REFERENCES group_list_tbl(group_id)
        ON DELETE CASCADE,	
	
	subject_id BIGINT NOT NULL
        REFERENCES subject_list_tbl(subject_id)
        ON DELETE CASCADE,
		
        description VARCHAR(150),
	
    UNIQUE (class_id, group_id, subject_id)
);

CREATE INDEX IF NOT EXISTS idx_class_subject_class_group
ON class_subjects_tbl(class_id, group_id);