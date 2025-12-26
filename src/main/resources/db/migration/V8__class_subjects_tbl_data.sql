/*---------------------------------------
-- V8_class_subjects_tbl_data.sql
----------------------------------------*/
INSERT INTO class_subjects_tbl (class_id, group_id, subject_id)
VALUES
	--Class NUR(class_id: 1, group_id: 4, subject_id: 1-5)--
    (1, 4, 1), --Bangla
    (1, 4, 2), --English
    (1, 4, 3), --Math
    (1, 4, 4), --Religion
    (1, 4, 5), --Drawing
	
	--Class KG(class_id: 2, group_id: 4, subject_id: 6-11)--
    (2, 4, 6), --Bangla
    (2, 4, 7), --English
    (2, 4, 8), --Math
    (2, 4, 9), --Religion
    (2, 4, 10), --Drawing
    (2, 4, 11), --Computer
	
	--Class ONE(class_id: 3, group_id: 4, subject_id: 12-18)--
    (3, 4, 12), --Bangla
    (3, 4, 13), --English
    (3, 4, 14), --Math
    (3, 4, 15), --Religion
    (3, 4, 16), --Drawing
    (3, 4, 17), --Computer
    (3, 4, 18), --Environment
	
	--Class TWO(class_id: 4, group_id: 4, subject_id: 19-25)--
    (4, 4, 19), --Bangla
    (4, 4, 20), --English
    (4, 4, 21), --Math
    (4, 4, 22), --Religion
    (4, 4, 23), --Drawing
    (4, 4, 24), --Computer
    (4, 4, 25), --Environment
	
	--Class THREE(class_id: 5, group_id: 4, subject_id: 26-34)--
    (5, 4, 26), --Bangla
    (5, 4, 27), --English
    (5, 4, 28), --Math
    (5, 4, 29), --Religion
    (5, 4, 30), --Science
    (5, 4, 31), --BGS
    (5, 4, 32), --Drawing
    (5, 4, 33), --Computer
    (5, 4, 34), --General Knowledge
	
	--Class FOUR(class_id: 6, group_id: 4, subject_id: 35-42)--
    (6, 4, 35), --Bangla
    (6, 4, 36), --English
    (6, 4, 37), --Math
    (6, 4, 38), --Religion
    (6, 4, 39), --Science
    (6, 4, 40), --BGS
    (6, 4, 41), --Drawing
    (6, 4, 42), --Computer
	
	--Class FIVE(class_id: 7, group_id: 4, subject_id: 43-48)--
    (7, 4, 43), --Bangla
    (7, 4, 44), --English
    (7, 4, 45), --Math
    (7, 4, 46), --Religion
    (7, 4, 47), --Science
    (7, 4, 48), --BGS
	
	--Class SIX(class_id: 8, group_id: 4, subject_id: 49-57, 58=06PHE)--
    (8, 4, 49), --Bangla 1st
    (8, 4, 50), --Bangla 2nd 
    (8, 4, 51), --English 1st
    (8, 4, 52), --English 2nd
    (8, 4, 53), --Math
    (8, 4, 54), --Religion
    (8, 4, 55), --Science
    (8, 4, 56), --BGS
    (8, 4, 57), --ICT
	
	--Class SEVEN(class_id: 9, group_id: 4, subject_id: 59-67, 68=07PHE)--
    (9, 4, 59), --Bangla 1st
    (9, 4, 60), --Bangla 2nd
    (9, 4, 61), --English 1st
    (9, 4, 62), --English 2nd
    (9, 4, 63), --Math
    (9, 4, 64), --Religion
    (9, 4, 65), --Science
    (9, 4, 66), --BGS
    (9, 4, 67), --ICT
	
	--Class EIGHT(class_id: 10, group_id: 4, subject_id: 69-77, 78=08PHE)--
    (10, 4, 69), --Bangla 1st
    (10, 4, 70), --Bangla 2nd
    (10, 4, 71), --English 1st
    (10, 4, 72), --English 2nd
    (10, 4, 73), --Math
    (10, 4, 74), --Religion
    (10, 4, 75), --Science
    (10, 4, 76), --BGS
    (10, 4, 77), --ICT
	
	--Class NINE:Science (class_id: 11, group_id: 1, subject_id: 79-93)--
    (11, 1, 79),--Bangla 1st Paper
    (11, 1, 80),--Bangla 2nd Paper
    (11, 1, 81),--English 1st Paper
    (11, 1, 82),--English 2nd Paper
    (11, 1, 83),--General Mathematics
    (11, 1, 84),--Islam and Moral Education
    (11, 1, 85),--Hindu Religion
    (11, 1, 86),--Buddhist Religion
    (11, 1, 87),--Christian Religion
    (11, 1, 88),--ICT
    (11, 1, 89),--BGS
    (11, 1, 90),--Physics
    (11, 1, 91),--Chemistry
    (11, 1, 92),--Biology
    (11, 1, 93),--Higher Mathematics
	
	--Class NINE:Business (class_id: 11, group_id: 2, subject_id: 79-88,94-96,100-101)--
    (11, 2, 79),--Bangla 1st Paper
    (11, 2, 80),--Bangla 2nd Paper
    (11, 2, 81),--English 1st Paper
    (11, 2, 82),--English 2nd Paper
    (11, 2, 83),--General Mathematics
    (11, 2, 84),--Islam and Moral Education
    (11, 2, 85),--Hindu Religion
    (11, 2, 86),--Buddhist Religion
    (11, 2, 87),--Christian Religion
    (11, 2, 88),--ICT
    (11, 2, 94),--Accounting
    (11, 2, 95),--Finance and Banking
    (11, 2, 96),--Business Entrepreneurship
    (11, 2, 100),--General Science
    (11, 2, 101),--Agriculture
	
	--Class NINE:Humanities (class_id: 11, group_id: 3, subject_id: 79-88,97-101)--
    (11, 3, 79),--Bangla 1st Paper
    (11, 3, 80),--Bangla 2nd Paper
    (11, 3, 81),--English 1st Paper
    (11, 3, 82),--English 2nd Paper
    (11, 3, 83),--General Mathematics
    (11, 3, 84),--Islam and Moral Education
    (11, 3, 85),--Hindu Religion
    (11, 3, 86),--Buddhist Religion
    (11, 3, 87),--Christian Religion
    (11, 3, 88),--ICT
    (11, 3, 97),--Economics
    (11, 3, 98),--Geography
    (11, 3, 99),--History
    (11, 3, 100),--General Science
    (11, 3, 101),--Agriculture,
	
	--Class TEN:Science (class_id: 12, group_id: 1, subject_id: 106-120)--
    (12, 1, 106),--Bangla 1st Paper
    (12, 1, 107),--Bangla 2nd Paper
    (12, 1, 108),--English 1st Paper
    (12, 1, 109),--English 2nd Paper
    (12, 1, 110),--General Mathematics
    (12, 1, 111),--Islam and Moral Education
    (12, 1, 112),--Hindu Religion
    (12, 1, 113),--Buddhist Religion
    (12, 1, 114),--Christian Religion
    (12, 1, 115),--ICT
    (12, 1, 116),--BGS
    (12, 1, 117),--Physics
    (12, 1, 118),--Chemistry
    (12, 1, 119),--Biology
    (12, 1, 120),--Higher Mathematics
	
	--Class TEN:Business (class_id: 12, group_id: 2, subject_id: 106-115,121-123,127-128)--
    (12, 2, 106),--Bangla 1st Paper
    (12, 2, 107),--Bangla 2nd Paper
    (12, 2, 108),--English 1st Paper
    (12, 2, 109),--English 2nd Paper
    (12, 2, 110),--General Mathematics
    (12, 2, 111),--Islam and Moral Education
    (12, 2, 112),--Hindu Religion
    (12, 2, 113),--Buddhist Religion
    (12, 2, 114),--Christian Religion
    (12, 2, 115),--ICT
    (12, 2, 121),--Accounting
    (12, 2, 122),--Finance and Banking
    (12, 2, 123),--Business Entrepreneurship
    (12, 2, 127),--General Science
    (12, 2, 128),--Agriculture
	
	--Class TEN:Humanities (class_id: 12, group_id: 3, subject_id: 106-115,124-128)--
    (12, 3, 106),--Bangla 1st Paper
    (12, 3, 107),--Bangla 2nd Paper
    (12, 3, 108),--English 1st Paper
    (12, 3, 109),--English 2nd Paper
    (12, 3, 110),--General Mathematics
    (12, 3, 111),--Islam and Moral Education
    (12, 3, 112),--Hindu Religion
    (12, 3, 113),--Buddhist Religion
    (12, 3, 114),--Christian Religion
    (12, 3, 115),--ICT
    (12, 3, 124),--Economics
    (12, 3, 125),--Geography
    (12, 3, 126),--History
    (12, 3, 127),--General Science
    (12, 3, 128)--Agriculture
ON CONFLICT (class_id, group_id, subject_id) DO NOTHING;