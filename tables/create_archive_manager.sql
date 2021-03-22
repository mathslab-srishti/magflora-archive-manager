CREATE TABLE archive_manager
    (   first_name VARCHAR(32) CONSTRAINT f_nm CHECK(first_name REGEXP '^[a-zA-Z]$'),
        last_name VARCHAR(32)  CONSTRAINT l_nm CHECK(last_name REGEXP '^[a-zA-Z]$'), 
        handle VARCHAR(16) CONSTRAINT hdl_am CHECK(handle REGEXP '^[a-zA-Z0-9_]$'), 
        email  VARCHAR(255) CONSTRAINT eml_val_am CHECK(email REGEXP '^[A-Za-z0-9._%\-+!#$&/=?^|~]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'), 
        access_level VARCHAR(32) CONSTRAINT chk_lvl CHECK(access_level in ('AR-L1', 'AR-L2', 'AR-L3','AR-L4')), 
        date_joined  DATE DEFAULT (CURRENT_DATE),
        Is_active TINYINT, 
        date_left DATE, 
        PRIMARY KEY (handle));
