CREATE TABLE database_manager
(   first_name VARCHAR(32)CONSTRAINT fd_nm CHECK(first_name REGEXP '^[a-zA-Z]$'),
    last_name VARCHAR(32)CONSTRAINT ld_nm CHECK(last_name REGEXP'^[a-zA-Z]$'),
    handle VARCHAR(16) CONSTRAINT hdl_dm CHECK(handle REGEXP '^[a-zA-Z0-9_]'), 
    email  VARCHAR(255) CONSTRAINT eml_val_dm CHECK(email REGEXP '^[A-Za-z0-9._%\-+!#$&/=?^|~]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'), 
    access_level VARCHAR(32) CONSTRAINT chk_lvl_db CHECK(access_level in ('DB-L1', 'DB-L2', 'DB-L3','DB-L4')),
    date_joined  DATE DEFAULT (CURRENT_DATE),
    Is_active TINYINT, 
    date_left DATE
    PRIMARY KEY (handle));


