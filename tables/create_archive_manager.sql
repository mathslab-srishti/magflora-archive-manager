CREATE TABLE archive_manager
    (   first_name VARCHAR(32),
        last_name VARCHAR(32), 
        handle VARCHAR(16), 
        email  VARCHAR(255), 
        access_level VARCHAR(32), 
        date_joined  DATE,
        active VARCHAR(32), 
        date_left DATE, 
        PRIMARY KEY (handle));
