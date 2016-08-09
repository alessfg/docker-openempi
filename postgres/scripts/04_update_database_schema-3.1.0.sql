-- This script must be installed on an instance of OpenEMPI that is based on the 3.0.0 major release

SET SESSION AUTHORIZATION 'openempi';
SET search_path = public, pg_catalog; 

-- New permissions
INSERT INTO permission (permission_id, permission_name, permission_description) VALUES
  (23, 'DATA_PROFILE_GENERATE', 'Allows the user to generate a data profile through the user interface.'),
  (24, 'DATA_PROFILE_VIEW', 'Allows the user to view a data profile through the user interface.'),
  (25, 'ENTITY_CONFIGURE', 'Allows the user to configure the entities that are supported by the OpenEMPI instance.'),
  (26, 'JOB_QUEUE_VIEW', 'Allows the user to view and manage the queue of job entries.');

-- Make sure the default admin user has the new permissions
INSERT INTO role_permission (role_id, permission_id) VALUES
(-1, 23), (-1, 24), (-1, 25), (-1, 26);
