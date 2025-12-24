-- =========================================
-- V5__update_agriculture_buddh_and_christ_subjname.sql
-- Purpose: Correct subject names as per board standard
-- =========================================

-- Agriculture Studies
UPDATE subject_list_tbl
SET
    subject_shortname = 'AGSD',
    subject_fullname  = 'Agriculture Studies'
WHERE subject_code = '134';

-- Buddhist Religion and Moral Education (code 113)
UPDATE subject_list_tbl
SET
    subject_fullname    = 'Buddhist Religion and Moral Education',
    subject_fullname_bn = 'বৌদ্ধধর্ম ও নৈতিক শিক্ষা'
WHERE subject_code = '113';

-- Christian Religion and Moral Education (code 114)
UPDATE subject_list_tbl
SET
    subject_fullname    = 'Christian Religion and Moral Education',
    subject_fullname_bn = 'খ্রিষ্টধর্ম ও নৈতিক শিক্ষা'
WHERE subject_code = '114';