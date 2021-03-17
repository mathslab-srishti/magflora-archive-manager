CREATE TABLE database_manager
(   first_name VARCHAR(32),
    last_name VARCHAR(32),
    handle VARCHAR(16), 
    email  VARCHAR(255), 
    access_level VARCHAR(32),
    date_joined  DATE,
    active VARCHAR(32), 
    date_left DATE);

    ALTER TABLE database_manager
    -> ADD PRIMARY KEY (handle);
