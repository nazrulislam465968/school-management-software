/*-----------------------------------------------------
-- V6__update_religion_list_tbl.sql
-- Purpose: changing order of Buddhism and Christianity
------------------------------------------------------*/
BEGIN;

UPDATE religion_list_tbl
SET religion_name = 'TEMP_BUDDHISM'
WHERE religion_id = 4;

UPDATE religion_list_tbl
SET religion_name = 'Buddhism'
WHERE religion_id = 3;

UPDATE religion_list_tbl
SET religion_name = 'Christianity'
WHERE religion_id = 4;

COMMIT;