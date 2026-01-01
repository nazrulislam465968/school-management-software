/*-----------------------------------*
-- V6__academic_tables_data.sql                     |
------------------------------------*/
-- 8. class_list_tbl
INSERT INTO class_list_tbl (class_name, class_name_bn, class_code)
VALUES
('NUR', 'নার্সারি', 'NUR_01'),
('KG', 'কেজি', 'KG_02'),
('ONE', 'প্রথম', 'ONE_03'),
('TWO', 'দ্বিতীয়', 'TWO_04'),
('THREE', 'তৃতীয়', 'THREE_05'),
('FOUR', 'চতুর্থ', 'FOUR_06'),
('FIVE', 'পঞ্চম', 'FIVE_07'),
('SIX', 'ষষ্ঠ', 'SIX_08'),
('SEVEN', 'সপ্তম', 'SEVEN_09'),
('EIGHT', 'অষ্টম', 'EIGHT_10'),
('NINE', 'নবম', 'NINE_11'),
('TEN', 'দশম', 'TEN_12'),
('ELEVEN', 'একাদশ', 'ELEVEN_13'),
('TWELVE', 'দ্বাদশ', 'TWELVE_14')
ON CONFLICT (class_code) DO NOTHING;

-- 9. section_list_tbl
INSERT INTO section_list_tbl (section_name, section_name_bn, section_code)
VALUES
('Paddo', 'পদ্ম', 'SEC01'),
('Golap', 'গোলাপ', 'SEC02'),
('Shapla', 'শাপলা', 'SEC03'),
('Joba', 'জবা', 'SEC04'),
('None', 'নাই', 'SEC05')
ON CONFLICT (section_code) DO NOTHING;


-- 10. group_list_tbl
INSERT INTO group_list_tbl (group_name, group_name_bn, group_code)
VALUES
('Science', 'বিজ্ঞান', 'SCI01'),
('Business', 'ব্যবসায় শিক্ষা', 'BUS02'),
('Humanities', 'মানবিক', 'HUM03'),
('None', 'নাই', 'NON04')
ON CONFLICT (group_code) DO NOTHING;

-- 11. year_list_tbl
INSERT INTO year_list_tbl (year_value, year_value_bn)
SELECT
    gs::TEXT AS year_value,
    translate(gs::TEXT, '0123456789', '০১২৩৪৫৬৭৮৯') AS year_value_bn
FROM generate_series(2001, 2050) AS gs
ON CONFLICT (year_value) DO NOTHING;



-- 12. exam_list_tbl
INSERT INTO exam_list_tbl (exam_name, exam_name_bn, exam_code, description)
VALUES
('1st Monthly Exam', '১ম মাসিক পরীক্ষা', 'TERMEXM01', 'After completion of 03 months'),
('Half Year Exam', 'অর্ধ-বার্ষিক পরীক্ষা', 'TERMEXM02', 'After completion of 06 months'),
('2nd Monthly Exam', '২য় মাসিক পরীক্ষা', 'TERMEXM03', 'After completion of 09 months'),
('Yearly Exam', 'বার্ষিক পরীক্ষা', 'FINALEXM', 'At the end of the academic year'),
('Pre-Test Exam', 'প্রাক-নির্বাচনী পরীক্ষা', 'PTESTEXM', 'Held for SSC candidates'),
('Test Exam', 'নির্বাচনী পরীক্ষা', 'TESTEXM', 'Held for SSC candidates')
ON CONFLICT (exam_code) DO NOTHING;