CREATE TABLE specimen(
     id INT,
     specimen_type VARCHAR(50),
     plant_id VARCHAR(50),
     Geo_Location VARCHAR(512),
     Location_name VARCHAR(512),
     preservation_type VARCHAR(225) CONSTRAINT PRV_tp CHECK(preservation_type in ('TYPE-1', 'TYPE-2', 'TYPE_3','TYPE-4')) ,
     original_dimension VARCHAR(225),
     color_data VARCHAR(50),
     collected_from VARCHAR(50),
     collected_by VARCHAR(50),
     collected_on DATE,
     extraction_method VARCHAR(32),
     extracted_by VARCHAR(50),
     extracted_on DATE,
     archived_by  VARCHAR(50),
     archived_on  VARCHAR(50),
     venation_type VARCHAR(50),
     PRIMARY KEY (id),
     FOREIGN KEY (id) REFERENCES plant(id)
     FOREIGN KEY  (extracted_by) REFERENCES specimen_extractor(handle)
     FOREIGN KEY  (collected_by) REFERENCES specimen_collector(handle)  
     FOREIGN KEY (archived_by) REFERENCES archive_manager(handle));