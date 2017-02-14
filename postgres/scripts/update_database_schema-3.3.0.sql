-- This script must be installed on an instance of OpenEMPI that is based on the 3.0.0 - 3.2.0 major release
-- 

UPDATE entity_attribute_validation_param SET value = '^([a-zA-Z0-9_.\\-])+@(([a-zA-Z0-9\\-])+)\.([a-zA-Z0-9]{2,4})$' WHERE entity_attribute_validation_param_id = 2;
