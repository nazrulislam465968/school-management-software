-- ========================================================================================
-- V2__insert_initial_data.sql
-- School Management System
-- Insert Initial Lookup Data (PostgreSQL)
-- Author: Nazrul Islam
-- ========================================================================================

-- 1. designation_list_tbl
INSERT INTO designation_list_tbl (designation_name, description)
VALUES
('Principal', 'College Principal'),
('Vice Principal', 'College Vice Principal'),
('Head Teacher', 'School Head Teacher'),
('Asst. Head Teacher', 'Assistant Head Teacher'),
('Teacher', 'Regular Teacher'),
('Lab Supervisor', 'Lab Supervisor'),
('Lab Assistant', 'Lab Assistant'),
('Accountant', 'Accounts Section'),
('Account Assistant', 'Accounts Section'),
('Office Assistant', 'Office staff'),
('Computer Operator', 'Office staff'),
('Office Clerk', 'Office staff')
ON CONFLICT (designation_name) DO NOTHING;

-- 2. user_role_tbl
INSERT INTO user_role_tbl (user_role_name, description)
VALUES
('Admin', 'Full access to the system'),
('HeadTeacher', 'Can manage students, attendance and exams'),
('Teacher', 'Can manage students, attendance and exams'),
('Staff', 'Staff access for limited modules'),
('Librarian', 'Library management access'),
('HostelSuper', 'Hostel management access'),
('Student', 'Student academic access')
ON CONFLICT (user_role_name) DO NOTHING;

-- 3. gender_list_tbl
INSERT INTO gender_list_tbl (gender_name, description)
VALUES
('Male', 'Male gender'),
('Female', 'Female gender'),
('Other', 'Other gender')
ON CONFLICT (gender_name) DO NOTHING;

-- 4. bloodgroup_list_tbl
INSERT INTO bloodgroup_list_tbl (blood_group_type)
VALUES
('A+'),('A-'),('B+'),('B-'),('AB+'),('AB-'),('O+'),('O-')
ON CONFLICT (blood_group_type) DO NOTHING;

-- 5. religion_list_tbl
INSERT INTO religion_list_tbl (religion_name)
VALUES
('Islam'),('Hinduism'),('Christianity'),('Buddhism'),('Other')
ON CONFLICT (religion_name) DO NOTHING;

-- 6. class_list_tbl
INSERT INTO class_list_tbl (class_name)
VALUES
('NUR'),('KG'),('ONE'),('TWO'),('THREE'),('FOUR'),('FIVE'),
('SIX'),('SEVEN'),('EIGHT'),('NINE'),('TEN'),('ELEVEN'),('TWELVE')
ON CONFLICT (class_name) DO NOTHING;

-- 7. section_list_tbl
INSERT INTO section_list_tbl (section_name)
VALUES
('Shapla'),('Golap'),('Paddo'),('Joba'),('None')
ON CONFLICT (section_name) DO NOTHING;

-- 8. group_list_tbl
INSERT INTO group_list_tbl (group_name)
VALUES
('Science'),('Business'),('Humanities'),('None')
ON CONFLICT (group_name) DO NOTHING;

-- 9. year_list_tbl
INSERT INTO year_list_tbl (year_value)
SELECT generate_series(2001, 2050)::TEXT
ON CONFLICT (year_value) DO NOTHING;

-- 10. exam_list_tbl
INSERT INTO exam_list_tbl (exam_name, description)
VALUES
('1st Monthly Exam', 'After completion of 03 months'),
('Half Year Exam', 'After completion of 06 months'),
('2nd Monthly Exam', 'After completion of 09 months'),
('Yearly Exam', 'At the end of the academic year'),
('Pre-Test Exam', 'Held for SSC candidates'),
('Test Exam', 'Held for SSC candidates')
ON CONFLICT (exam_name) DO NOTHING;

-- 11. month_list_tbl
INSERT INTO month_list_tbl (month_name, month_number, description)
VALUES
('January',1,'First month of the year'),
('February',2,'Second month of the year'),
('March',3,'Third month of the year'),
('April',4,'Fourth month of the year'),
('May',5,'Fifth month of the year'),
('June',6,'Sixth month of the year'),
('July',7,'Seventh month of the year'),
('August',8,'Eighth month of the year'),
('September',9,'Ninth month of the year'),
('October',10,'Tenth month of the year'),
('November',11,'Eleventh month of the year'),
('December',12,'Twelfth month of the year')
ON CONFLICT (month_number) DO NOTHING;

-- 12. day_list_tbl
INSERT INTO day_list_tbl (day_name, day_number, description)
VALUES
('Sunday',1,'First day of the week'),
('Monday',2,'Second day of the week'),
('Tuesday',3,'Third day of the week'),
('Wednesday',4,'Fourth day of the week'),
('Thursday',5,'Fifth day of the week'),
('Friday',6,'Sixth day of the week'),
('Saturday',7,'Seventh day of the week')
ON CONFLICT (day_number) DO NOTHING;
