CREATE TABLE specimen_extractor
( first_name VARCHAR(32),
  last_name VARCHAR(32),
  handle VARCHAR(16) CONSTRAINT hdl_se CHECK(handle REGEXP '^[a-zA-Z0-9_]$'), 
  email  VARCHAR(255) CONSTRAINT eml_val_se CHECK(email REGEXP '^[A-Za-z0-9._%\-+!#$&/=?^|~]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'), 
  date_joined DATE DEFAULT (CURRENT_DATE),
  is_active TINYINT,
  date_left DATE,  
  notes VARCHAR(512));