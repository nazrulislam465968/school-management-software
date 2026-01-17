/*---------------------------------*
--V12__class_subjects_tbl_data.sql
-----------------------------------*/
INSERT INTO class_subjects_tbl (
    class_id,
    group_id,
    subject_id,
    description
)
SELECT
    c.class_id,
    g.group_id,
    s.subject_id,
    x.description
FROM (
    VALUES
		--Class NUR Subjects--
        ('NUR_01',  'NON04', 'NURBAN', 'NUR Bangla'),
        ('NUR_01',  'NON04', 'NURENG', 'NUR English'),
        ('NUR_01',  'NON04', 'NURMATH', 'NUR Math'),
        ('NUR_01',  'NON04', 'NURRELI', 'NUR Religion'),
        ('NUR_01',  'NON04', 'NURDRW', 'NUR Drawing'),
		
		--Class KG Subjects--
        ('KG_02',  'NON04', 'KGBAN', 'KG Bangla'),
        ('KG_02',  'NON04', 'KGENG', 'KG English'),
        ('KG_02',  'NON04', 'KGMATH', 'KG Math'),
        ('KG_02',  'NON04', 'KGRELI', 'KG Religion'),
        ('KG_02',  'NON04', 'KGDRW', 'KG Drawing'),
        ('KG_02',  'NON04', 'KGCOM', 'KG Computer'),
		
		--Class ONE Subjects--
        ('ONE_03',  'NON04', '01BAN', 'ONE Bangla'),
        ('ONE_03',  'NON04', '01ENG', 'ONE English'),
        ('ONE_03',  'NON04', '01MATH', 'ONE Math'),
        ('ONE_03',  'NON04', '01RELI', 'ONE Religion'),
        ('ONE_03',  'NON04', '01DRW', 'ONE Drawing'),
        ('ONE_03',  'NON04', '01COM', 'ONE Computer'),
        ('ONE_03',  'NON04', '01ENVI', 'ONE Environment'),
		
		--Class TWO Subjects--
        ('TWO_04',  'NON04', '02BAN', 'TWO Bangla'),
        ('TWO_04',  'NON04', '02ENG', 'TWO English'),
        ('TWO_04',  'NON04', '02MATH', 'TWO Math'),
        ('TWO_04',  'NON04', '02RELI', 'TWO Religion'),
        ('TWO_04',  'NON04', '02DRW', 'TWO Drawing'),
        ('TWO_04',  'NON04', '02COM', 'TWO Computer'),
        ('TWO_04',  'NON04', '02ENVI', 'TWO Environment'),
		
		--Class THREE Subjects--
        ('THREE_05',  'NON04', '03BAN', 'THREE Bangla'),
        ('THREE_05',  'NON04', '03ENG', 'THREE English'),
        ('THREE_05',  'NON04', '03MATH', 'THREE Math'),
        ('THREE_05',  'NON04', '03RELI', 'THREE Religion'),
        ('THREE_05',  'NON04', '03GSC', 'THREE General Science'),
        ('THREE_05',  'NON04', '03BGS', 'THREE BGS'),
        ('THREE_05',  'NON04', '03DRW', 'THREE Drawing'),
        ('THREE_05',  'NON04', '03COM', 'THREE Computer'),
        ('THREE_05',  'NON04', '03GKN', 'THREE General Knowledge'),
		
		--Class FOUR Subjects--
        ('FOUR_06',  'NON04', '04BAN', 'FOUR Bangla'),
        ('FOUR_06',  'NON04', '04ENG', 'FOUR English'),
        ('FOUR_06',  'NON04', '04MATH', 'FOUR Math'),
        ('FOUR_06',  'NON04', '04RELI', 'FOUR Religion'),
        ('FOUR_06',  'NON04', '04GSC', 'FOUR General Science'),
        ('FOUR_06',  'NON04', '04BGS', 'FOUR BGS'),
        ('FOUR_06',  'NON04', '04DRW', 'FOUR Drawing'),
        ('FOUR_06',  'NON04', '04COM', 'FOUR Computer'),
		
		--Class FIVE Subjects--
        ('FIVE_07',  'NON04', '05BAN', 'FIVE Bangla'),
        ('FIVE_07',  'NON04', '05ENG', 'FIVE English'),
        ('FIVE_07',  'NON04', '05MATH', 'FIVE Math'),
        ('FIVE_07',  'NON04', '05RELI', 'FIVE Religion'),
        ('FIVE_07',  'NON04', '05GSC', 'FIVE General Science'),
        ('FIVE_07',  'NON04', '05BGS', 'FIVE BGS'),
		
		--Class SIX Subjects--
        ('SIX_08',  'NON04', '06BAN1', 'SIX Bangla 1st'),
        ('SIX_08',  'NON04', '06BAN2', 'SIX Bangla 2nd'),
        ('SIX_08',  'NON04', '06ENG1', 'SIX English 1st'),
        ('SIX_08',  'NON04', '06ENG2', 'SIX English 2nd'),
        ('SIX_08',  'NON04', '06MATH', 'SIX Math'),
        ('SIX_08',  'NON04', '06RELI', 'SIX Religion'),
        ('SIX_08',  'NON04', '06GSC', 'SIX General Science'),
        ('SIX_08',  'NON04', '06BGS', 'SIX BGS'),
        ('SIX_08',  'NON04', '06ICT', 'SIX ICT'),
		
		--Class SEVEN Subjects--
        ('SEVEN_09',  'NON04', '07BAN1', 'SEVEN Bangla 1st'),
        ('SEVEN_09',  'NON04', '07BAN2', 'SEVEN Bangla 2nd'),
        ('SEVEN_09',  'NON04', '07ENG1', 'SEVEN English 1st'),
        ('SEVEN_09',  'NON04', '07ENG2', 'SEVEN English 2nd'),
        ('SEVEN_09',  'NON04', '07MATH', 'SEVEN Math'),
        ('SEVEN_09',  'NON04', '07RELI', 'SEVEN Religion'),
        ('SEVEN_09',  'NON04', '07GSC', 'SEVEN General Science'),
        ('SEVEN_09',  'NON04', '07BGS', 'SEVEN BGS'),
        ('SEVEN_09',  'NON04', '07ICT', 'SEVEN ICT'),
		
		--Class EIGHT Subjects--
        ('EIGHT_10',  'NON04', '08BAN1', 'EIGHT Bangla 1st'),
        ('EIGHT_10',  'NON04', '08BAN2', 'EIGHT Bangla 2nd'),
        ('EIGHT_10',  'NON04', '08ENG1', 'EIGHT English 1st'),
        ('EIGHT_10',  'NON04', '08ENG2', 'EIGHT English 2nd'),
        ('EIGHT_10',  'NON04', '08MATH', 'EIGHT Math'),
        ('EIGHT_10',  'NON04', '08RELI', 'EIGHT Religion'),
        ('EIGHT_10',  'NON04', '08GSC', 'EIGHT General Science'),
        ('EIGHT_10',  'NON04', '08BGS', 'EIGHT BGS'),
        ('EIGHT_10',  'NON04', '08ICT', 'EIGHT ICT'),
		
		--Class NINE-SCIENCE Subjects--
        ('NINE_11',  'SCI01', '101', 'NINE-SCIENCE Bangla 1st'),
        ('NINE_11',  'SCI01', '102', 'NINE-SCIENCE Bangla 2nd'),
        ('NINE_11',  'SCI01', '107', 'NINE-SCIENCE English 1st'),
        ('NINE_11',  'SCI01', '108', 'NINE-SCIENCE English 2nd'),
        ('NINE_11',  'SCI01', '109', 'NINE-SCIENCE General Math'),
        ('NINE_11',  'SCI01', '111', 'NINE-SCIENCE Religion ISLAM'),
        ('NINE_11',  'SCI01', '112', 'NINE-SCIENCE Religion HINDUISM'),
        ('NINE_11',  'SCI01', '113', 'NINE-SCIENCE Religion BUDDHISM'),
        ('NINE_11',  'SCI01', '114', 'NINE-SCIENCE Religion CHRISTIANITY'),
        ('NINE_11',  'SCI01', '154', 'NINE-SCIENCE ICT'),
        ('NINE_11',  'SCI01', '150', 'NINE-SCIENCE BGS'),
        ('NINE_11',  'SCI01', '136', 'NINE-SCIENCE Physics'),
        ('NINE_11',  'SCI01', '137', 'NINE-SCIENCE Chemistry'),
        ('NINE_11',  'SCI01', '138', 'NINE-SCIENCE Biology'),
        ('NINE_11',  'SCI01', '126', 'NINE-SCIENCE Higher Math'),
		
		--Class NINE-BUSINESS Subjects--
        ('NINE_11',  'BUS02', '101', 'NINE-BUSINESS Bangla 1st'),
        ('NINE_11',  'BUS02', '102', 'NINE-BUSINESS Bangla 2nd'),
        ('NINE_11',  'BUS02', '107', 'NINE-BUSINESS English 1st'),
        ('NINE_11',  'BUS02', '108', 'NINE-BUSINESS English 2nd'),
        ('NINE_11',  'BUS02', '109', 'NINE-BUSINESS General Math'),
        ('NINE_11',  'BUS02', '111', 'NINE-BUSINESS Religion ISLAM'),
        ('NINE_11',  'BUS02', '112', 'NINE-BUSINESS Religion HINDUISM'),
        ('NINE_11',  'BUS02', '113', 'NINE-BUSINESS Religion BUDDHISM'),
        ('NINE_11',  'BUS02', '114', 'NINE-BUSINESS Religion CHRISTIANITY'),
        ('NINE_11',  'BUS02', '154', 'NINE-BUSINESS ICT'),
        ('NINE_11',  'BUS02', '146', 'NINE-BUSINESS Accounting'),
        ('NINE_11',  'BUS02', '152', 'NINE-BUSINESS Finance and Banking'),
        ('NINE_11',  'BUS02', '143', 'NINE-BUSINESS BEntrepreneurship'),
        ('NINE_11',  'BUS02', '127', 'NINE-BUSINESS General Science'),
        ('NINE_11',  'BUS02', '134', 'NINE-BUSINESS Agriculture Studies'),
		
		--Class NINE-HUMANITIES Subjects--
        ('NINE_11',  'HUM03', '101', 'NINE-HUMANITIES Bangla 1st'),
        ('NINE_11',  'HUM03', '102', 'NINE-HUMANITIES Bangla 2nd'),
        ('NINE_11',  'HUM03', '107', 'NINE-HUMANITIES English 1st'),
        ('NINE_11',  'HUM03', '108', 'NINE-HUMANITIES English 2nd'),
        ('NINE_11',  'HUM03', '109', 'NINE-HUMANITIES General Math'),
        ('NINE_11',  'HUM03', '111', 'NINE-HUMANITIES Religion ISLAM'),
        ('NINE_11',  'HUM03', '112', 'NINE-HUMANITIES Religion HINDUISM'),
        ('NINE_11',  'HUM03', '113', 'NINE-HUMANITIES Religion BUDDHISM'),
        ('NINE_11',  'HUM03', '114', 'NINE-HUMANITIES Religion CHRISTIANITY'),
        ('NINE_11',  'HUM03', '154', 'NINE-HUMANITIES ICT'),
        ('NINE_11',  'HUM03', '141', 'NINE-HUMANITIES Economics'),
        ('NINE_11',  'HUM03', '110', 'NINE-HUMANITIES Geography'),
        ('NINE_11',  'HUM03', '153', 'NINE-HUMANITIES History'),
        ('NINE_11',  'HUM03', '127', 'NINE-HUMANITIES General Science'),
        ('NINE_11',  'HUM03', '134', 'NINE-HUMANITIES Agriculture Studies'),
		
		--Class TEN-SCIENCE Subjects--
        ('TEN_12',  'SCI01', '101', 'TEN-SCIENCE Bangla 1st'),
        ('TEN_12',  'SCI01', '102', 'TEN-SCIENCE Bangla 2nd'),
        ('TEN_12',  'SCI01', '107', 'TEN-SCIENCE English 1st'),
        ('TEN_12',  'SCI01', '108', 'TEN-SCIENCE English 2nd'),
        ('TEN_12',  'SCI01', '109', 'TEN-SCIENCE General Math'),
        ('TEN_12',  'SCI01', '111', 'TEN-SCIENCE Religion ISLAM'),
        ('TEN_12',  'SCI01', '112', 'TEN-SCIENCE Religion HINDUISM'),
        ('TEN_12',  'SCI01', '113', 'TEN-SCIENCE Religion BUDDHISM'),
        ('TEN_12',  'SCI01', '114', 'TEN-SCIENCE Religion CHRISTIANITY'),
        ('TEN_12',  'SCI01', '154', 'TEN-SCIENCE ICT'),
        ('TEN_12',  'SCI01', '150', 'TEN-SCIENCE BGS'),
        ('TEN_12',  'SCI01', '136', 'TEN-SCIENCE Physics'),
        ('TEN_12',  'SCI01', '137', 'TEN-SCIENCE Chemistry'),
        ('TEN_12',  'SCI01', '138', 'TEN-SCIENCE Biology'),
        ('TEN_12',  'SCI01', '126', 'TEN-SCIENCE Higher Math'),
		
		--Class TEN-BUSINESS Subjects--
        ('TEN_12',  'BUS02', '101', 'TEN-BUSINESS Bangla 1st'),
        ('TEN_12',  'BUS02', '102', 'TEN-BUSINESS Bangla 2nd'),
        ('TEN_12',  'BUS02', '107', 'TEN-BUSINESS English 1st'),
        ('TEN_12',  'BUS02', '108', 'TEN-BUSINESS English 2nd'),
        ('TEN_12',  'BUS02', '109', 'TEN-BUSINESS General Math'),
        ('TEN_12',  'BUS02', '111', 'TEN-BUSINESS Religion ISLAM'),
        ('TEN_12',  'BUS02', '112', 'TEN-BUSINESS Religion HINDUISM'),
        ('TEN_12',  'BUS02', '113', 'TEN-BUSINESS Religion BUDDHISM'),
        ('TEN_12',  'BUS02', '114', 'TEN-BUSINESS Religion CHRISTIANITY'),
        ('TEN_12',  'BUS02', '154', 'TEN-BUSINESS ICT'),
        ('TEN_12',  'BUS02', '146', 'TEN-BUSINESS Accounting'),
        ('TEN_12',  'BUS02', '152', 'TEN-BUSINESS Finance and Banking'),
        ('TEN_12',  'BUS02', '143', 'TEN-BUSINESS BEntrepreneurship'),
        ('TEN_12',  'BUS02', '127', 'TEN-BUSINESS General Science'),
        ('TEN_12',  'BUS02', '134', 'TEN-BUSINESS Agriculture Studies'),
		
		--Class TEN-HUMANITIES Subjects--
        ('TEN_12',  'HUM03', '101', 'TEN-HUMANITIES Bangla 1st'),
        ('TEN_12',  'HUM03', '102', 'TEN-HUMANITIES Bangla 2nd'),
        ('TEN_12',  'HUM03', '107', 'TEN-HUMANITIES English 1st'),
        ('TEN_12',  'HUM03', '108', 'TEN-HUMANITIES English 2nd'),
        ('TEN_12',  'HUM03', '109', 'TEN-HUMANITIES General Math'),
        ('TEN_12',  'HUM03', '111', 'TEN-HUMANITIES Religion ISLAM'),
        ('TEN_12',  'HUM03', '112', 'TEN-HUMANITIES Religion HINDUISM'),
        ('TEN_12',  'HUM03', '113', 'TEN-HUMANITIES Religion BUDDHISM'),
        ('TEN_12',  'HUM03', '114', 'TEN-HUMANITIES Religion CHRISTIANITY'),
        ('TEN_12',  'HUM03', '154', 'TEN-HUMANITIES ICT'),
        ('TEN_12',  'HUM03', '141', 'TEN-HUMANITIES Economics'),
        ('TEN_12',  'HUM03', '110', 'TEN-HUMANITIES Geography'),
        ('TEN_12',  'HUM03', '153', 'TEN-HUMANITIES History'),
        ('TEN_12',  'HUM03', '127', 'TEN-HUMANITIES General Science'),
        ('TEN_12',  'HUM03', '134', 'TEN-HUMANITIES Agriculture Studies')	
) AS x(
    class_code,
    group_code,
    subject_code,
    description
)
JOIN class_list_tbl c
    ON c.class_code = x.class_code
JOIN group_list_tbl g
    ON g.group_code = x.group_code
JOIN subject_list_tbl s
    ON s.subject_code = x.subject_code
ON CONFLICT (class_id, group_id, subject_id) DO NOTHING;