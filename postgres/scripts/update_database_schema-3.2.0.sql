-- This script must be installed on an instance of OpenEMPI that is based on the 3.0.0 major release
-- 

ALTER TABLE report_request
	ADD COLUMN entity_version_id integer default 2 NOT NULL,
	ADD CONSTRAINT fk_report_request_entity_version_id FOREIGN KEY (entity_version_id) REFERENCES entity (entity_version_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- New Job Types
INSERT INTO job_type
(job_type_cd, job_type_name, job_type_description, job_type_handler) VALUES
( 9, 'Entity Record Export', 'Job exports all the records in a given entity for further processing', 'entityRecordExportJobHandler');
INSERT INTO job_type
(job_type_cd, job_type_name, job_type_description, job_type_handler) VALUES
(10, 'Remove Global Identifiers', 'Job removes the global identifiers associated with all records of a given entity', 'removeGlobalIdentifiersHandler');

ALTER TABLE link_log
	ADD COLUMN ternary_vector_value integer default 0 NOT NULL,
	ADD COLUMN is_null_scored boolean default false NOT NULL;


