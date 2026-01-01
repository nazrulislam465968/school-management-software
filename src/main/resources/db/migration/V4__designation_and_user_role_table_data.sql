/*---------------------------------------------*
-- V4__designation_and_user_role_table_data.sql                     |
-----------------------------------------------*/
-- 6. designation_list_tbl
INSERT INTO designation_list_tbl (designation_name, designation_name_bn, designation_code, description)
VALUES
('Principal', 'প্রিন্সিপাল', 'DESI_PRIN', 'College Principal'),
('Vice Principal', 'ভাইস প্রিন্সিপাল', 'DESI_VPRIN', 'College Vice Principal'),
('Head Teacher', 'প্রধান শিক্ষক', 'DESI_HEAD', 'School Head Teacher'),
('Asst Head Teacher', 'সহকারি প্রধান শিক্ষক', 'DESI_AHEAD', 'Assistant Head Teacher'),
('Asst Teacher', 'সহকারি শিক্ষক', 'DESI_ATCHR', 'Regular Assistant Teacher'),
('Senior Teacher', 'সিনিয়র শিক্ষক', 'DESI_STCHR', 'Regular Senior Teacher'),
('Lab Supervisor', 'ল্যাব সুপারভাইজার', 'DESI_LSUP', 'Lab Supervisor'),
('Lab Assistant', 'ল্যাব এসিস্ট্যান্ট', 'DESI_LASST', 'Lab Assistant'),
('Accountant', 'একাউন্ট্যান্ট', 'DESI_ACCTNT', 'Accounts Section'),
('Account Assistant', 'একাউন্ট এসিস্ট্যান্ট', 'DESI_AASST', 'Accounts Section'),
('Office Assistant', 'অফিস এসিস্ট্যান্ট', 'DESI_OASST', 'Office staff'),
('Computer Operator', 'কম্পিউটার অপারেটর', 'DESI_COMOP', 'Office staff'),
('Office Clerk', 'অফিস ক্লার্ক', 'DESI_OCLRK', 'Office staff')
ON CONFLICT (designation_code) DO NOTHING;

-- 7. user_role_tbl
INSERT INTO user_role_tbl (user_role_name, user_role_name_bn, user_role_code, description)
VALUES
('Admin', 'এডমিন', 'USR_ADMN', 'Full access to the system'),
('Principal', 'প্রিন্সিপাল', 'USR_PRIN', 'Can access to some features of system'),
('VicePrincipal', 'ভাইসপ্রিন্সিপাল', 'USR_VPRIN', 'Full access to the system'),
('HeadTeacher', 'প্রধানশিক্ষক', 'USR_HEAD', 'Can manage students, attendance and exams'),
('AsstHeadTeacher', 'সহকারিপ্রধানশিক্ষক', 'USR_AHEAD', 'Can manage students, attendance and exams'),
('Teacher', 'শিক্ষক', 'USR_TCHR', 'Can manage students, attendance and exams'),
('Staff', 'স্টাফ', 'USR_STF', 'Staff access for limited modules'),
('Librarian', 'লাইব্রেরিয়ান', 'USR_LIB', 'Library management access'),
('HostelSuper', 'হোস্টেলসুপার', 'USR_HSUP', 'Hostel management access'),
('Student', 'শিক্ষার্থী', 'USR_STU', 'Student academic access')
ON CONFLICT (user_role_code) DO NOTHING;