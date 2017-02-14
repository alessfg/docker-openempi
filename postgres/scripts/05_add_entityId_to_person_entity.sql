SET SESSION AUTHORIZATION 'openempi';
SET search_path = public, pg_catalog;

INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('991','entityId','entityId','The OpenEMPI Internal Entity Id','6','37','2017-2-12 12:00:00.000','-1','2','true','true','false','false');

INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('1047','3','991');
