CREATE TABLE issuer
(   archive_issuer VARCHAR(32),
    plant_id VARCHAR(32),
    name_of_issuee VARCHAR(16) CONSTRAINT nm_iss CHECK(name_of_issuee REGEXP '^[a-zA-Z0-9_]$'), 
    email  VARCHAR(255) CONSTRAINT eml_val_issuer CHECK(email REGEXP '^[A-Za-z0-9._%\-+!#$&/=?^|~]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'), 
    location_issuee VARCHAR(32),
    date_of_issuee DATE DEFAULT (CURRENT_DATE),
    return_date DATE);