/*-----------------------------------*
-- V2__initial_lookup_tables_data.sql
-------------------------------------*/
-- 1. gender_list_tbl
INSERT INTO gender_list_tbl (gender_name, gender_name_bn, gender_code, description)
VALUES
('Male', 'পুরুষ', 'M_GNDR01', 'Male gender'),
('Female', 'নারী', 'F_GNDR02', 'Female gender'),
('Other', 'অন্যান্য', 'O_GNDR03', 'Other gender')
ON CONFLICT (gender_code) DO NOTHING;

-- 2. bloodgroup_list_tbl
INSERT INTO bloodgroup_list_tbl (bloodgroup_type, bloodgroup_type_bn, bloodgroup_code)
VALUES
('A+', 'এ+', 'A_POS'),
('A-', 'এ-', 'A_NEG'),
('B+', 'বি+', 'B_POS'),
('B-', 'বি-', 'B_NEG'),
('AB+', 'এবি+', 'AB_POS'),
('AB-', 'এবি-', 'AB_NEG'),
('O+', 'ও+', 'O_POS'),
('O-', 'ও-', 'O_NEG')
ON CONFLICT (bloodgroup_code) DO NOTHING;

-- 3. religion_list_tbl
INSERT INTO religion_list_tbl (religion_name, religion_name_bn, religion_code)
VALUES
('Islam', 'ইসলাম', 'ISLM01'),
('Hinduism', 'হিন্দুধর্ম', 'HIND02'),
('Buddhism', 'বৌদ্ধধর্ম', 'BUDD03'),
('Christianity', 'খ্রিষ্টধর্ম', 'CHRI04'),
('Other', 'অন্যান্য', 'OTHR05')
ON CONFLICT (religion_code) DO NOTHING;

-- 4. month_list_tbl
INSERT INTO month_list_tbl (month_name, month_name_bn, month_code, description)
VALUES
('January', 'জানুয়ারি', 'MONTH01', 'First month of the year'),
('February', 'ফেব্রুয়ারি', 'MONTH02', 'Second month of the year'),
('March', 'মার্চ', 'MONTH03', 'Third month of the year'),
('April', 'এপ্রিল', 'MONTH04', 'Fourth month of the year'),
('May', 'মে', 'MONTH05', 'Fifth month of the year'),
('June', 'জুন', 'MONTH06', 'Sixth month of the year'),
('July', 'জুলাই', 'MONTH07', 'Seventh month of the year'),
('August', 'আগস্ট', 'MONTH08', 'Eighth month of the year'),
('September', 'সেপ্টেম্বর', 'MONTH09', 'Ninth month of the year'),
('October', 'অক্টোবর', 'MONTH10', 'Tenth month of the year'),
('November', 'নভেম্বর', 'MONTH11', 'Eleventh month of the year'),
('December', 'ডিসেম্বর', 'MONTH12', 'Twelfth month of the year')
ON CONFLICT (month_code) DO NOTHING;

-- 5. day_list_tbl
INSERT INTO day_list_tbl (day_name, day_name_bn, day_code, description)
VALUES
('Sunday', 'রবিবার', 'DAY01', 'First day of the week'),
('Monday', 'সোমবার', 'DAY02', 'Second day of the week'),
('Tuesday', 'মঙ্গলবার', 'DAY03', 'Third day of the week'),
('Wednesday', 'বুধবার', 'DAY04', 'Fourth day of the week'),
('Thursday', 'বৃহস্পতিবার', 'DAY05', 'Fifth day of the week'),
('Friday', 'শুক্রবার', 'DAY06', 'Sixth day of the week'),
('Saturday', 'শনিবার', 'DAY07', 'Seventh day of the week')
ON CONFLICT (day_code) DO NOTHING;