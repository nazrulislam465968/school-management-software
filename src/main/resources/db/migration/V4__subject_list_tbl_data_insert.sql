----------------------------------------
--"religionsubject_list_tbl" data insert
----------------------------------------
INSERT INTO religionsubject_list_tbl
(religion_code, religion_name, religionsubject_code, religionsubject_name, description)
VALUES
('01', 'Islam',        '111', 'Islam and Moral Education', ''),
('02', 'Hinduism',     '112', 'Hindu Religion and Moral Education', ''),
('03', 'Christianity', '113', 'Christian Religion and Moral Education', ''),
('04', 'Buddhism',     '114', 'Buddhist Religion and Moral Education', '')
ON CONFLICT (religionsubject_code) DO NOTHING;


----------------------------------
--"subject_list_tbl" data-insert
----------------------------------
INSERT INTO subject_list_tbl (class_id, subject_shortname, subject_shortname_bn, subject_fullname, subject_fullname_bn, subject_code, description) VALUES
    --Class NUR--
    (1, 'BAN', 'বাংলা', 'Bangla', 'বাংলা', 'NURBAN', ''),
    (1, 'ENG', 'ইংরেজি', 'English For Today', 'ইংরেজি', 'NURENG', ''),
    (1, 'MATH', 'গণিত', 'Mathematics', 'গণিত', 'NURMATH', ''),
    (1, 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', 'NURRELI', ''),
    (1, 'DRW', 'ড্রইং', 'Drawing', 'চারু ও কারু শিল্প', 'NURDRW', ''),
    --Class KG--
    (2, 'BAN', 'বাংলা', 'Bangla', 'বাংলা', 'KGBAN', ''),
    (2, 'ENG', 'ইংরেজি', 'English For Today', 'ইংরেজি', 'KGENG', ''),
    (2, 'MATH', 'গণিত', 'Mathematics', 'গণিত', 'KGMATH', ''),
    (2, 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', 'KGRELI', ''),
    (2, 'DRW', 'ড্রইং', 'Drawing', 'চারু ও কারুশিল্প', 'KGDRW', ''),
    (2, 'COM', 'কম্পিউটার', 'Computer', 'কম্পিউটার শিক্ষা', 'KGCOM', ''),
    --Class ONE--
    (3, 'BAN', 'বাংলা', 'Bangla', 'বাংলা', '01BAN', ''),
    (3, 'ENG', 'ইংরেজি', 'English For Today', 'ইংরেজি', '01ENG', ''),
    (3, 'MATH', 'গণিত', 'Mathematics', 'প্রাথমিক গণিত', '01MATH', ''),
    (3, 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', '01RELI', ''),
    (3, 'DRW', 'ড্রইং', 'Drawing', 'চারু ও কারু শিল্প', '01DRW', ''),
    (3, 'COM', 'কম্পিউটার', 'Computer', 'কম্পিউটার শিক্ষা', '01COM', ''),
    (3, 'ENVI', 'পরিবেশ', 'Environment', 'পরিবেশ-পরিচিতি', '01ENVI', ''),
    --Class TWO--
    (4, 'BAN', 'বাংলা', 'Bangla', 'বাংলা', '02BAN', ''),
    (4, 'ENG', 'ইংরেজি', 'English For Today', 'ইংরেজি', '02ENG', ''),
    (4, 'MATH', 'গণিত', 'Mathematics', 'প্রাথমিক গণিত', '02MATH', ''),
    (4, 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', '02RELI', ''),
    (4, 'DRW', 'ড্রইং', 'Drawing', 'চারু ও কারু শিল্প', '02DRW', ''),
    (4, 'COM', 'কম্পিউটার', 'Computer', 'কম্পিউটার শিক্ষা', '02COM', ''),
    (4, 'ENVI', 'পরিবেশ', 'Environment', 'পরিবেশ-পরিচিতি', '02ENVI', ''),
    --Class THREE--
    (5, 'BAN', 'বাংলা', 'Bangla', 'বাংলা', '03BAN', ''),
    (5, 'ENG', 'ইংরেজি', 'English For Today', 'ইংরেজি', '03ENG', ''),
    (5, 'MATH', 'গণিত', 'Mathematics', 'প্রাথমিক গণিত', '03MATH', ''),
    (5, 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', '03RELI', ''),
    (5, 'GSC', 'বিজ্ঞান', 'General Science', 'প্রাথিমিক বিজ্ঞান', '03GSC', ''),
    (5, 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '03BGS', ''),
    (5, 'DRW', 'ড্রইং', 'Drawing', 'চারু ও কারু শিল্প', '03DRW', ''),
    (5, 'COM', 'কম্পিউটার', 'Computer', 'কম্পিউটার শিক্ষা', '03COM', ''),
    (5, 'GKN', 'সা.জ্ঞান', 'General Knowledge', 'সাধারণ জ্ঞান', '03GKN', ''),
    --Class FOUR-- 
    (6, 'BAN', 'বাংলা', 'Bangla', 'বাংলা', '04BAN', ''),
    (6, 'ENG', 'ইংরেজি', 'English For Today', 'ইংরেজি', '04ENG', ''),
    (6, 'MATH', 'গণিত', 'Mathematics', 'প্রাথমিক গণিত', '04MATH', ''),
    (6, 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', '04RELI', ''),
    (6, 'GSC', 'বিজ্ঞান', 'General Science', 'প্রাথমিক বিজ্ঞান', '04GSC', ''),
    (6, 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '04BGS', ''),
    (6, 'DRW', 'ড্রইং', 'Drawing', 'চারু ও কারু শিল্প', '04DRW', ''),
    (6, 'COM', 'কম্পিউটার', 'Computer', 'কম্পিউটার শিক্ষা', '04COM', ''),
    --Class FIVE--
    (7, 'BAN', 'বাংলা', 'Bangla', 'বাংলা', '05BAN', ''),
    (7, 'ENG', 'ইংরেজি', 'English For Today', 'ইংরেজি', '05ENG', ''),
    (7, 'MATH', 'গণিত', 'Mathematics', 'প্রাথমিক গণিত', '05MATH', ''),
    (7, 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', '05RELI', ''),
    (7, 'GSC', 'বিজ্ঞান', 'General Science', 'প্রাথমিক বিজ্ঞান', '05GSC', ''),
    (7, 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '05BGS', ''),
    --Class SIX--
    (8, 'BAN1', 'বাংলা ১ম', 'Bangla 1st Paper', 'বাংলা ১ম পত্র', '06BAN1', ''),
    (8, 'BAN2', 'বাংলা ২য়', 'Bangla 2nd Paper', 'বাংলা ২য় পত্র', '06BAN2', ''),
    (8, 'ENG1', 'ইংরেজি ১ম', 'English 1st Paper', 'ইংরেজি ১ম পত্র', '06ENG1', ''),
    (8, 'ENG2', 'ইংরেজি ২য়', 'English 2nd Paper', 'ইংরেজি ২য় পত্র', '06ENG2', ''),
    (8, 'MATH', 'গণিত', 'Mathematics', '৬ষ্ঠ গণিত', '06MATH', ''),
    (8, 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', '06RELI', ''),
    (8, 'GSC', 'বিজ্ঞান', 'General Science', 'বিজ্ঞান', '06GSC', ''),
    (8, 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '06BGS', ''),
    (8, 'ICT', 'আইসিটি', 'Information and Communication Technology', 'তথ্য ও যোগাযোগ প্রযুক্তি', '06ICT', ''),
    (8, 'PE', 'হেলথ', 'Physical Education', 'শারীরিক শিক্ষা', '06PE', ''),
    --Class SEVEN--
    (9, 'BAN1', 'বাংলা ১ম', 'Bangla 1st Paper', 'বাংলা ১ম পত্র', '07BAN1', ''),
    (9, 'BAN2', 'বাংলা ২য়', 'Bangla 2nd Paper', 'বাংলা ২য় পত্র', '07BAN2', ''),
    (9, 'ENG1', 'ইংরেজি ১ম', 'English 1st Paper', 'ইংরেজি ১ম পত্র', '07ENG1', ''),
    (9, 'ENG2', 'ইংরেজি ২য়', 'English 2nd Paper', 'ইংরেজি ২য় পত্র', '07ENG2', ''),
    (9, 'MATH', 'গণিত', 'Mathematics', '৭ম গণিত', '07MATH', ''),
    (9, 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', '07RELI', ''),
    (9, 'GSC', 'বিজ্ঞান', 'General Science', 'বিজ্ঞান', '07GSC', ''),
    (9, 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '07BGS', ''),
    (9, 'ICT', 'আইসিটি', 'Information and Communication Technology', 'তথ্য ও যোগাযোগ প্রযুক্তি', '07ICT', ''),
    (9, 'PE', 'হেলথ', 'Physical Education', 'শারীরিক শিক্ষা', '07PE', ''),
    --Class EIGHT--
    (10, 'BAN1', 'বাংলা ১ম', 'Bangla 1st Paper', 'বাংলা ১ম পত্র', '08BAN1', ''),
    (10, 'BAN2', 'বাংলা ২য়', 'Bangla 2nd Paper', 'বাংলা ২য় পত্র', '08BAN2', ''),
    (10, 'ENG1', 'ইংরেজি ১ম', 'English 1st Paper', 'ইংরেজি ১ম পত্র', '08ENG1', ''),
    (10, 'ENG2', 'ইংরেজি ২য়', 'English 2nd Paper', 'ইংরেজি ২য় পত্র', '08ENG2', ''),
    (10, 'MATH', 'গণিত', 'Mathematics', '৮ম গণিত', '08MATH', ''),
    (10, 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', '08RELI', ''),
    (10, 'GSC', 'বিজ্ঞান', 'General Science', 'বিজ্ঞান', '08GSC', ''),
    (10, 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '08BGS', ''),
    (10, 'ICT', 'আইসিটি', 'Information and Communication Technology', 'তথ্য ও যোগাযোগ প্রযুক্তি', '08ICT', ''),
    (10, 'PE', 'হেলথ', 'Physical Education', 'শারীরিক শিক্ষা', '08PE', ''),
    --Class NINE--
    (11, 'BAN1', 'বাংলা ১ম', 'Bangla 1st Paper', 'বাংলা ১ম পত্র', '101', ''),
    (11, 'BAN2', 'বাংলা ২য়', 'Bangla 2nd Paper', 'বাংলা ২য় পত্র', '102', ''),
    (11, 'ENG1', 'ইংরেজি ১ম', 'English 1st Paper', 'ইংরেজি ১ম পত্র', '107', ''),
    (11, 'ENG2', 'ইংরেজি ২য়', 'English 2nd Paper', 'ইংরেজি ২য় পত্র', '108', ''),
    (11, 'GMAT', 'সাধারণ গণিত', 'General Mathematics', 'সাধারণ গণিত', '109', ''),
    (11, 'RELI', 'ধর্ম', 'Islam and Moral Education', 'ইসলাম ও নৈতিক শিক্ষা', '111', ''),
    (11, 'RELI', 'ধর্ম', 'Hindu Religion and Moral Education', 'হিন্দুধর্ম ও নৈতিক শিক্ষা', '112', ''),
    (11, 'RELI', 'ধর্ম', 'Christian Religion and Moral Education', 'খ্রিষ্টধর্ম ও নৈতিক শিক্ষা', '113', ''),
    (11, 'RELI', 'ধর্ম', 'Buddhist Religion and Moral Education', 'বৌদ্ধধর্ম ও নৈতিক শিক্ষা', '114', ''),
    (11, 'ICT', 'আইসিটি', 'Information & Communication Technology', 'তথ্য ও যোগাযোগ প্রযুক্তি', '154', ''),
	--Group subjects of Science-- 
    (11, 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '150', ''),
    (11, 'PHY', 'পদার্থ', 'Physics', 'পদার্থ বিজ্ঞান', '136', ''),
    (11, 'CHEM', 'রসায়ন', 'Chemistry', 'রসায়ন বিজ্ঞান', '137', ''),
    (11, 'BIO', 'জীববিজ্ঞান', 'Biology', 'জীব বিজ্ঞান', '138', ''),
    (11, 'HMAT', 'উ.গণিত', 'Higher Mathematics', 'উচ্চতর গণিত', '126', ''),
	--Group subjects of Business--
    (11, 'ACCT', 'হি.বি.', 'Accounting', 'হিসাব বিজ্ঞান', '146', ''),
    (11, 'FB', 'ফি.ব্যাংকিং', 'Finance & Banking', 'ফিন্যান্স ও ব্যাংকিং', '152', ''),
    (11, 'BE', 'ব্য.উদ্যোগ', 'Business Entrepreneurship', 'ব্যবসায় উদ্যোগ', '143', ''),
	--Group subjects of Humanities--
    (11, 'ECO', 'অর্থনীতি', 'Economics', 'অর্থনীতি', '141', ''),
    (11, 'GEO', 'ভূগোল', 'Geography and Environment', 'ভূগোল ও পরিবেশ', '110', ''),
    (11, 'HIS', 'ইতিহাস', 'History of Bangladesh and World Civilization', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '153', ''),
	--Common subjects of (B+H)--
    (11, 'GSC', 'বিজ্ঞান', 'General Science', 'সাধারণ বিজ্ঞান', '127', ''),
    (11, 'AGSC', 'কৃষি', 'Agriculture Science', 'কৃষি শিক্ষা', '134', ''),
	--Extra Subjects--
    (11, 'CEDU', 'ক্যারিয়ার', 'Career Education', 'ক্যারিয়ার শিক্ষা', '158', ''),
    (11, 'ACRFT', 'চারুকারু', 'Arts and Crafts', 'চারু ও কারুকলা', '148', ''),
    (11, 'CIVI', 'পৌরনীতি', 'Civics and Citizenship', 'পৌরনীতি ও নাগরিকতা', '140', ''),
    (11, 'HSCI', 'গার্হস্থ্য', 'Home Science', 'গার্হস্থ্য বিজ্ঞান', '151', ''),
	
    --Class TEN--
    (12, 'BAN1', 'বাংলা ১ম', 'Bangla 1st Paper', 'বাংলা ১ম পত্র', '101', ''),
    (12, 'BAN2', 'বাংলা ২য়', 'Bangla 2nd Paper', 'বাংলা ২য় পত্র', '102', ''),
    (12, 'ENG1', 'ইংরেজি ১ম', 'English 1st Paper', 'ইংরেজি ১ম পত্র', '107', ''),
    (12, 'ENG2', 'ইংরেজি ২য়', 'English 2nd Paper', 'ইংরেজি ২য় পত্র', '108', ''),
    (12, 'GMAT', 'সাধারণ গণিত', 'General Mathematics', 'সাধারণ গণিত', '109', ''),
    (12, 'RELI', 'ধর্ম', 'Islam and Moral Education', 'ইসলাম ও নৈতিক শিক্ষা', '111', ''),
    (12, 'RELI', 'ধর্ম', 'Hindu Religion and Moral Education', 'হিন্দুধর্ম ও নৈতিক শিক্ষা', '112', ''),
    (12, 'RELI', 'ধর্ম', 'Christian Religion and Moral Education', 'খ্রিষ্টধর্ম ও নৈতিক শিক্ষা', '113', ''),
    (12, 'RELI', 'ধর্ম', 'Buddhist Religion and Moral Education', 'বৌদ্ধধর্ম ও নৈতিক শিক্ষা', '114', ''),
    (12, 'ICT', 'আইসিটি', 'Information & Communication Technology', 'তথ্য ও যোগাযোগ প্রযুক্তি', '154', ''),
	--Group subjects of Science-- 
    (12, 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '150', ''),
    (12, 'PHY', 'পদার্থ', 'Physics', 'পদার্থ বিজ্ঞান', '136', ''),
    (12, 'CHEM', 'রসায়ন', 'Chemistry', 'রসায়ন বিজ্ঞান', '137', ''),
    (12, 'BIO', 'জীববিজ্ঞান', 'Biology', 'জীব বিজ্ঞান', '138', ''),
    (12, 'HMAT', 'উ.গণিত', 'Higher Mathematics', 'উচ্চতর গণিত', '126', ''),
	--Group subjects of Business--
    (12, 'ACCT', 'হি.বি.', 'Accounting', 'হিসাব বিজ্ঞান', '146', ''),
    (12, 'FB', 'ফি.ব্যাংকিং', 'Finance & Banking', 'ফিন্যান্স ও ব্যাংকিং', '152', ''),
    (12, 'BE', 'ব্য.উদ্যোগ', 'Business Entrepreneurship', 'ব্যবসায় উদ্যোগ', '143', ''),
	--Group subjects of Humanities--
    (12, 'ECO', 'অর্থনীতি', 'Economics', 'অর্থনীতি', '141', ''),
    (12, 'GEO', 'ভূগোল', 'Geography and Environment', 'ভূগোল ও পরিবেশ', '110', ''),
    (12, 'HIS', 'ইতিহাস', 'History of Bangladesh and World Civilization', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '153', ''),
	--Common subjects of (B+H)--
    (12, 'GSC', 'বিজ্ঞান', 'General Science', 'সাধারণ বিজ্ঞান', '127', ''),
    (12, 'AGSC', 'কৃষি', 'Agriculture Science', 'কৃষি শিক্ষা', '134', ''),
	--Extra Subjects--
    (12, 'CEDU', 'ক্যারিয়ার', 'Career Education', 'ক্যারিয়ার শিক্ষা', '158', ''),
    (12, 'ACRFT', 'চারুকারু', 'Arts and Crafts', 'চারু ও কারুকলা', '148', ''),
    (12, 'CIVI', 'পৌরনীতি', 'Civics and Citizenship', 'পৌরনীতি ও নাগরিকতা', '140', ''),
    (12, 'HSCI', 'গার্হস্থ্য', 'Home Science', 'গার্হস্থ্য বিজ্ঞান', '151', '')
ON CONFLICT (class_id, subject_code) DO NOTHING;