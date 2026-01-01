/*-----------------------------*
--V8__subject_list_tbl_data.sql
-------------------------------*/
INSERT INTO subject_list_tbl (
    class_id,
    subject_shortname,
    subject_shortname_bn,
    subject_fullname,
    subject_fullname_bn,
    subject_code,
    description
)
SELECT
    c.class_id,
    s.subject_shortname,
    s.subject_shortname_bn,
    s.subject_fullname,
    s.subject_fullname_bn,
    s.subject_code,
    s.description
FROM class_list_tbl c
JOIN (
    VALUES
	-- ======================
    -- NUR
    -- ======================
    ('NUR_01','BAN','বাংলা','Bangla','বাংলা','NURBAN',''),
    ('NUR_01','ENG','ইংরেজি','English For Today','ইংরেজি','NURENG',''),
    ('NUR_01','MATH','গণিত','Mathematics','গণিত','NURMATH',''),
    ('NUR_01','RELI','ধর্ম','Religion','ধর্ম ও নৈতিক শিক্ষা','NURRELI',''),
    ('NUR_01','DRW','ড্রইং','Drawing','চারু ও কারু শিল্প','NURDRW',''),

    -- ======================
    -- KG
    -- ======================
    ('KG_02','BAN','বাংলা','Bangla','বাংলা','KGBAN',''),
    ('KG_02','ENG','ইংরেজি','English For Today','ইংরেজি','KGENG',''),
    ('KG_02','MATH','গণিত','Mathematics','গণিত','KGMATH',''),
    ('KG_02','RELI','ধর্ম','Religion','ধর্ম ও নৈতিক শিক্ষা','KGRELI',''),
    ('KG_02','DRW','ড্রইং','Drawing','চারু ও কারুশিল্প','KGDRW',''),
    ('KG_02','COM','কম্পিউটার','Computer','কম্পিউটার শিক্ষা','KGCOM',''),

    -- ======================
    --  ONE
    -- ======================
    ('ONE_03','BAN','বাংলা','Bangla','বাংলা','01BAN',''),
    ('ONE_03','ENG','ইংরেজি','English For Today','ইংরেজি','01ENG',''),
    ('ONE_03','MATH','গণিত','Mathematics','প্রাথমিক গণিত','01MATH',''),
    ('ONE_03','RELI','ধর্ম','Religion','ধর্ম ও নৈতিক শিক্ষা','01RELI',''),
    ('ONE_03','DRW','ড্রইং','Drawing','চারু ও কারু শিল্প','01DRW',''),
    ('ONE_03','COM','কম্পিউটার','Computer','কম্পিউটার শিক্ষা','01COM',''),
    ('ONE_03','ENVI','পরিবেশ','Environment','পরিবেশ-পরিচিতি','01ENVI',''),

    -- ======================
    --  TWO
    -- ======================
    ('TWO_04','BAN','বাংলা','Bangla','বাংলা','02BAN',''),
    ('TWO_04','ENG','ইংরেজি','English For Today','ইংরেজি','02ENG',''),
    ('TWO_04','MATH','গণিত','Mathematics','প্রাথমিক গণিত','02MATH',''),
    ('TWO_04','RELI','ধর্ম','Religion','ধর্ম ও নৈতিক শিক্ষা','02RELI',''),
    ('TWO_04','DRW','ড্রইং','Drawing','চারু ও কারু শিল্প','02DRW',''),
    ('TWO_04','COM','কম্পিউটার','Computer','কম্পিউটার শিক্ষা','02COM',''),
    ('TWO_04','ENVI','পরিবেশ','Environment','পরিবেশ-পরিচিতি','02ENVI',''),

    -- ======================
    --  THREE
    -- ======================
    ('THREE_05','BAN','বাংলা','Bangla','বাংলা','03BAN',''),
    ('THREE_05','ENG','ইংরেজি','English For Today','ইংরেজি','03ENG',''),
    ('THREE_05','MATH','গণিত','Mathematics','প্রাথমিক গণিত','03MATH',''),
    ('THREE_05','RELI','ধর্ম','Religion','ধর্ম ও নৈতিক শিক্ষা','03RELI',''),
    ('THREE_05','GSC','বিজ্ঞান','General Science','প্রাথমিক বিজ্ঞান','03GSC',''),
    ('THREE_05','BGS','বিজিএস','Bangladesh Global Studies','বাংলাদেশ ও বিশ্ব পরিচয়','03BGS',''),
    ('THREE_05','DRW','ড্রইং','Drawing','চারু ও কারু শিল্প','03DRW',''),
    ('THREE_05','COM','কম্পিউটার','Computer','কম্পিউটার শিক্ষা','03COM',''),
    ('THREE_05','GKN','সা.জ্ঞান','General Knowledge','সাধারণ জ্ঞান','03GKN',''),

    -- ======================
    --   FOUR
    -- ======================
    ('FOUR_06','BAN','বাংলা','Bangla','বাংলা','04BAN',''),
    ('FOUR_06','ENG','ইংরেজি','English For Today','ইংরেজি','04ENG',''),
    ('FOUR_06','MATH','গণিত','Mathematics','প্রাথমিক গণিত','04MATH',''),
    ('FOUR_06','RELI','ধর্ম','Religion','ধর্ম ও নৈতিক শিক্ষা','04RELI',''),
    ('FOUR_06','GSC','বিজ্ঞান','General Science','প্রাথমিক বিজ্ঞান','04GSC',''),
    ('FOUR_06','BGS','বিজিএস','Bangladesh Global Studies','বাংলাদেশ ও বিশ্ব পরিচয়','04BGS',''),
    ('FOUR_06','DRW','ড্রইং','Drawing','চারু ও কারু শিল্প','04DRW',''),
    ('FOUR_06','COM','কম্পিউটার','Computer','কম্পিউটার শিক্ষা','04COM',''),

    -- ======================
    --   FIVE
    -- ======================
    ('FIVE_07', 'BAN', 'বাংলা', 'Bangla', 'বাংলা', '05BAN', ''),
    ('FIVE_07', 'ENG', 'ইংরেজি', 'English For Today', 'ইংরেজি', '05ENG', ''),
    ('FIVE_07', 'MATH', 'গণিত', 'Mathematics', 'প্রাথমিক গণিত', '05MATH', ''),
    ('FIVE_07', 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', '05RELI', ''),
    ('FIVE_07', 'GSC', 'বিজ্ঞান', 'General Science', 'প্রাথমিক বিজ্ঞান', '05GSC', ''),
    ('FIVE_07', 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '05BGS', ''),

    -- ======================
    --   SIX
    -- ======================
    ('SIX_08', 'BAN1', 'বাংলা ১ম', 'Bangla 1st Paper', 'বাংলা ১ম পত্র', '06BAN1', ''),
    ('SIX_08', 'BAN2', 'বাংলা ২য়', 'Bangla 2nd Paper', 'বাংলা ২য় পত্র', '06BAN2', ''),
    ('SIX_08', 'ENG1', 'ইংরেজি ১ম', 'English 1st Paper', 'ইংরেজি ১ম পত্র', '06ENG1', ''),
    ('SIX_08', 'ENG2', 'ইংরেজি ২য়', 'English 2nd Paper', 'ইংরেজি ২য় পত্র', '06ENG2', ''),
    ('SIX_08', 'MATH', 'গণিত', 'Mathematics', '৬ষ্ঠ গণিত', '06MATH', ''),
    ('SIX_08', 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', '06RELI', ''),
    ('SIX_08', 'GSC', 'বিজ্ঞান', 'General Science', 'বিজ্ঞান', '06GSC', ''),
    ('SIX_08', 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '06BGS', ''),
    ('SIX_08', 'ICT', 'আইসিটি', 'Information and Communication Technology', 'তথ্য ও যোগাযোগ প্রযুক্তি', '06ICT', ''),
    ('SIX_08', 'PHE', 'হেলথ', 'Physical Health Education', 'শারীরিক শিক্ষা', '06PHE', ''),

    -- ======================
    --   SEVEN
    -- ======================
    ('SEVEN_09', 'BAN1', 'বাংলা ১ম', 'Bangla 1st Paper', 'বাংলা ১ম পত্র', '07BAN1', ''),
    ('SEVEN_09', 'BAN2', 'বাংলা ২য়', 'Bangla 2nd Paper', 'বাংলা ২য় পত্র', '07BAN2', ''),
    ('SEVEN_09', 'ENG1', 'ইংরেজি ১ম', 'English 1st Paper', 'ইংরেজি ১ম পত্র', '07ENG1', ''),
    ('SEVEN_09', 'ENG2', 'ইংরেজি ২য়', 'English 2nd Paper', 'ইংরেজি ২য় পত্র', '07ENG2', ''),
    ('SEVEN_09', 'MATH', 'গণিত', 'Mathematics', '৭ম গণিত', '07MATH', ''),
    ('SEVEN_09', 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', '07RELI', ''),
    ('SEVEN_09', 'GSC', 'বিজ্ঞান', 'General Science', 'বিজ্ঞান', '07GSC', ''),
    ('SEVEN_09', 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '07BGS', ''),
    ('SEVEN_09', 'ICT', 'আইসিটি', 'Information and Communication Technology', 'তথ্য ও যোগাযোগ প্রযুক্তি', '07ICT', ''),
    ('SEVEN_09', 'PHE', 'হেলথ', 'Physical Health Education', 'শারীরিক শিক্ষা', '07PHE', ''),

    -- ======================
    --   EIGHT
    -- ======================
    ('EIGHT_10', 'BAN1', 'বাংলা ১ম', 'Bangla 1st Paper', 'বাংলা ১ম পত্র', '08BAN1', ''),
    ('EIGHT_10', 'BAN2', 'বাংলা ২য়', 'Bangla 2nd Paper', 'বাংলা ২য় পত্র', '08BAN2', ''),
    ('EIGHT_10', 'ENG1', 'ইংরেজি ১ম', 'English 1st Paper', 'ইংরেজি ১ম পত্র', '08ENG1', ''),
    ('EIGHT_10', 'ENG2', 'ইংরেজি ২য়', 'English 2nd Paper', 'ইংরেজি ২য় পত্র', '08ENG2', ''),
    ('EIGHT_10', 'MATH', 'গণিত', 'Mathematics', '৮ম গণিত', '08MATH', ''),
    ('EIGHT_10', 'RELI', 'ধর্ম', 'Religion', 'ধর্ম ও নৈতিক শিক্ষা', '08RELI', ''),
    ('EIGHT_10', 'GSC', 'বিজ্ঞান', 'General Science', 'বিজ্ঞান', '08GSC', ''),
    ('EIGHT_10', 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '08BGS', ''),
    ('EIGHT_10', 'ICT', 'আইসিটি', 'Information and Communication Technology', 'তথ্য ও যোগাযোগ প্রযুক্তি', '08ICT', ''),
    ('EIGHT_10', 'PHE', 'হেলথ', 'Physical Health Education', 'শারীরিক শিক্ষা', '08PHE', ''),

    -- ======================
    --   NINE
    -- ======================
    ('NINE_11', 'BAN1', 'বাংলা ১ম', 'Bangla 1st Paper', 'বাংলা ১ম পত্র', '101', ''),
    ('NINE_11', 'BAN2', 'বাংলা ২য়', 'Bangla 2nd Paper', 'বাংলা ২য় পত্র', '102', ''),
    ('NINE_11', 'ENG1', 'ইংরেজি ১ম', 'English 1st Paper', 'ইংরেজি ১ম পত্র', '107', ''),
    ('NINE_11', 'ENG2', 'ইংরেজি ২য়', 'English 2nd Paper', 'ইংরেজি ২য় পত্র', '108', ''),
    ('NINE_11', 'GMAT', 'সাধারণ গণিত', 'General Mathematics', 'সাধারণ গণিত', '109', ''),
    ('NINE_11', 'RELI', 'ধর্ম', 'Islam and Moral Education', 'ইসলাম ও নৈতিক শিক্ষা', '111', ''),
    ('NINE_11', 'RELI', 'ধর্ম', 'Hindu Religion and Moral Education', 'হিন্দুধর্ম ও নৈতিক শিক্ষা', '112', ''),
    ('NINE_11', 'RELI', 'ধর্ম', 'Buddhist Religion and Moral Education', 'বৌদ্ধধর্ম ও নৈতিক শিক্ষা', '113', ''),
    ('NINE_11', 'RELI', 'ধর্ম', 'Christian Religion and Moral Education', 'খ্রিষ্টধর্ম ও নৈতিক শিক্ষা', '114', ''),
    ('NINE_11', 'ICT', 'আইসিটি', 'Information & Communication Technology', 'তথ্য ও যোগাযোগ প্রযুক্তি', '154', ''),
	--Group subjects of Science-- 
    ('NINE_11', 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '150', ''),
    ('NINE_11', 'PHY', 'পদার্থ', 'Physics', 'পদার্থ বিজ্ঞান', '136', ''),
    ('NINE_11', 'CHEM', 'রসায়ন', 'Chemistry', 'রসায়ন বিজ্ঞান', '137', ''),
    ('NINE_11', 'BIO', 'জীববিজ্ঞান', 'Biology', 'জীব বিজ্ঞান', '138', ''),
    ('NINE_11', 'HMAT', 'উ.গণিত', 'Higher Mathematics', 'উচ্চতর গণিত', '126', ''),
	--Group subjects of Business--
    ('NINE_11', 'ACCT', 'হি.বিজ্ঞান.', 'Accounting', 'হিসাব বিজ্ঞান', '146', ''),
    ('NINE_11', 'FB', 'ফি.ব্যাংকিং', 'Finance & Banking', 'ফিন্যান্স ও ব্যাংকিং', '152', ''),
    ('NINE_11', 'BE', 'ব্য.উদ্যোগ', 'Business Entrepreneurship', 'ব্যবসায় উদ্যোগ', '143', ''),
	--Group subjects of Humanities--
    ('NINE_11', 'ECO', 'অর্থনীতি', 'Economics', 'অর্থনীতি', '141', ''),
    ('NINE_11', 'GEO', 'ভূগোল', 'Geography and Environment', 'ভূগোল ও পরিবেশ', '110', ''),
    ('NINE_11', 'HIS', 'ইতিহাস', 'History of Bangladesh and World Civilization', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '153', ''),
	--Common subjects of (B+H)--
    ('NINE_11', 'GSC', 'বিজ্ঞান', 'General Science', 'সাধারণ বিজ্ঞান', '127', ''),
    ('NINE_11', 'AGSD', 'কৃষি', 'Agriculture Studies', 'কৃষি শিক্ষা', '134', ''),
	--Extra Subjects--
    ('NINE_11', 'CEDU', 'ক্যারিয়ার', 'Career Education', 'ক্যারিয়ার শিক্ষা', '158', ''),
    ('NINE_11', 'ACRFT', 'চারুকারু', 'Arts and Crafts', 'চারু ও কারুকলা', '148', ''),
    ('NINE_11', 'CIVI', 'পৌরনীতি', 'Civics and Citizenship', 'পৌরনীতি ও নাগরিকতা', '140', ''),
    ('NINE_11', 'HSCI', 'গার্হস্থ্য', 'Home Science', 'গার্হস্থ্য বিজ্ঞান', '151', ''),
	
    -- ======================
    --   TEN
    -- ======================
    ('TEN_12', 'BAN1', 'বাংলা ১ম', 'Bangla 1st Paper', 'বাংলা ১ম পত্র', '101', ''),
    ('TEN_12', 'BAN2', 'বাংলা ২য়', 'Bangla 2nd Paper', 'বাংলা ২য় পত্র', '102', ''),
    ('TEN_12', 'ENG1', 'ইংরেজি ১ম', 'English 1st Paper', 'ইংরেজি ১ম পত্র', '107', ''),
    ('TEN_12', 'ENG2', 'ইংরেজি ২য়', 'English 2nd Paper', 'ইংরেজি ২য় পত্র', '108', ''),
    ('TEN_12', 'GMAT', 'সাধারণ গণিত', 'General Mathematics', 'সাধারণ গণিত', '109', ''),
    ('TEN_12', 'RELI', 'ধর্ম', 'Islam and Moral Education', 'ইসলাম ও নৈতিক শিক্ষা', '111', ''),
    ('TEN_12', 'RELI', 'ধর্ম', 'Hindu Religion and Moral Education', 'হিন্দুধর্ম ও নৈতিক শিক্ষা', '112', ''),
    ('TEN_12', 'RELI', 'ধর্ম', 'Buddhist Religion and Moral Education', 'বৌদ্ধধর্ম ও নৈতিক শিক্ষা', '113', ''),
    ('TEN_12', 'RELI', 'ধর্ম', 'Christian Religion and Moral Education', 'খ্রিষ্টধর্ম ও নৈতিক শিক্ষা', '114', ''),
    ('TEN_12', 'ICT', 'আইসিটি', 'Information & Communication Technology', 'তথ্য ও যোগাযোগ প্রযুক্তি', '154', ''),
	--Group subjects of Science-- 
    ('TEN_12', 'BGS', 'বিজিএস', 'Bangladesh Global Studies', 'বাংলাদেশ ও বিশ্ব পরিচয়', '150', ''),
    ('TEN_12', 'PHY', 'পদার্থ', 'Physics', 'পদার্থ বিজ্ঞান', '136', ''),
    ('TEN_12', 'CHEM', 'রসায়ন', 'Chemistry', 'রসায়ন বিজ্ঞান', '137', ''),
    ('TEN_12', 'BIO', 'জীববিজ্ঞান', 'Biology', 'জীব বিজ্ঞান', '138', ''),
    ('TEN_12', 'HMAT', 'উ.গণিত', 'Higher Mathematics', 'উচ্চতর গণিত', '126', ''),
	--Group subjects of Business--
    ('TEN_12', 'ACCT', 'হি.বিজ্ঞান.', 'Accounting', 'হিসাব বিজ্ঞান', '146', ''),
    ('TEN_12', 'FB', 'ফি.ব্যাংকিং', 'Finance & Banking', 'ফিন্যান্স ও ব্যাংকিং', '152', ''),
    ('TEN_12', 'BE', 'ব্য.উদ্যোগ', 'Business Entrepreneurship', 'ব্যবসায় উদ্যোগ', '143', ''),
	--Group subjects of Humanities--
    ('TEN_12', 'ECO', 'অর্থনীতি', 'Economics', 'অর্থনীতি', '141', ''),
    ('TEN_12', 'GEO', 'ভূগোল', 'Geography and Environment', 'ভূগোল ও পরিবেশ', '110', ''),
    ('TEN_12', 'HIS', 'ইতিহাস', 'History of Bangladesh and World Civilization', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '153', ''),
	--Common subjects of (B+H)--
    ('TEN_12', 'GSC', 'বিজ্ঞান', 'General Science', 'সাধারণ বিজ্ঞান', '127', ''),
    ('TEN_12', 'AGSD', 'কৃষি', 'Agriculture Studies', 'কৃষি শিক্ষা', '134', ''),
	--Extra Subjects--
    ('TEN_12', 'CEDU', 'ক্যারিয়ার', 'Career Education', 'ক্যারিয়ার শিক্ষা', '158', ''),
    ('TEN_12', 'ACRFT', 'চারুকারু', 'Arts and Crafts', 'চারু ও কারুকলা', '148', ''),
    ('TEN_12', 'CIVI', 'পৌরনীতি', 'Civics and Citizenship', 'পৌরনীতি ও নাগরিকতা', '140', ''),
    ('TEN_12', 'HSCI', 'গার্হস্থ্য', 'Home Science', 'গার্হস্থ্য বিজ্ঞান', '151', '')
) AS s(
    class_code,
    subject_shortname,
    subject_shortname_bn,
    subject_fullname,
    subject_fullname_bn,
    subject_code,
    description
)
ON c.class_code = s.class_code
ON CONFLICT (class_id, subject_code) DO NOTHING;
