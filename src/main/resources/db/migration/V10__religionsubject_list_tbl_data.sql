/*------------------------------------------*
--V10__religionsubject_list_tbl_data.sql
--------------------------------------------*/
INSERT INTO religionsubject_list_tbl (
    religion_id,
    subject_code,
    subject_name,
    description
)
SELECT
    r.religion_id,
    s.subject_code,
    s.subject_name,
    s.description
FROM religion_list_tbl r
JOIN (
    VALUES
        ('ISLM01', '111', 'Islam and Moral Education', ''),
        ('HIND02', '112', 'Hindu Religion and Moral Education', ''),
        ('BUDD03', '113', 'Buddhist Religion and Moral Education', ''),
        ('CHRI04', '114', 'Christian Religion and Moral Education', '')
) AS s(
    religion_code,
    subject_code,
    subject_name,
    description
)
    ON r.religion_code = s.religion_code
ON CONFLICT (subject_code) DO NOTHING;