SET SESSION AUTHORIZATION 'openempi';
SET search_path = public, pg_catalog;

INSERT INTO entity (entity_version_id,entity_id,version_id,name,description,display_name,synchronous_matching,date_created,created_by_id) VALUES ('2','1','1','person','person entity definition model','person','true','2013-10-29 10:38:18.038','-1');

INSERT INTO entity_attribute_group (entity_attribute_group_id,name,display_name,display_order,entity_version_id) VALUES ('1','contactInfo','Contact Info','2','2');
INSERT INTO entity_attribute_group (entity_attribute_group_id,name,display_name,display_order,entity_version_id) VALUES ('2','recordManagement','Record Management','5','2');
INSERT INTO entity_attribute_group (entity_attribute_group_id,name,display_name,display_order,entity_version_id) VALUES ('3','other','Other','6','2');
INSERT INTO entity_attribute_group (entity_attribute_group_id,name,display_name,display_order,entity_version_id) VALUES ('4','birth','Birth','3','2');
INSERT INTO entity_attribute_group (entity_attribute_group_id,name,display_name,display_order,entity_version_id) VALUES ('5','phone','Phone','4','2');
INSERT INTO entity_attribute_group (entity_attribute_group_id,name,display_name,display_order,entity_version_id) VALUES ('6','name','Name','1','2');

INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('50','nationality','nationality','Nationality','6','30','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('51','race','race','Race','6','29','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('52','city','city','City','6','11','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('53','mothersMaidenName','mothersMaidenName','Mothers Maiden Name','6','21','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('54','birthPlace','birthPlace','Birth Place','6','18','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('55','multipleBirthInd','multipleBirthInd','Multiple Birth Indicator','6','19','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('56','prefix','prefix','Prefix','6','7','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('57','ssn','ssn','Social Security Number','6','22','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('58','address2','address2','Address 2','6','10','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('59','address1','address1','Address 1','6','9','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('60','degree','degree','Degree','6','33','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('61','phoneExt','phoneExt','Phone Extension','6','26','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('62','deathTime','deathTime','Death Time','9','36','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('63','fatherName','fatherName','Father Name','6','6','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('64','phoneAreaCode','phoneAreaCode','Phone Area Code','6','24','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('65','deathInd','deathInd','Death Indicator','6','35','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('66','gender','gender','Gender','6','27','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('67','phoneNumber','phoneNumber','Phone Number','6','25','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('68','countryCode','countryCode','Country Code','6','15','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('69','state','state','State','6','12','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('70','postalCode','postalCode','Postal Code','6','13','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('71','motherName','motherName','Mother Name','6','5','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('72','phoneCountryCode','phoneCountryCode','Phone Country Code','6','23','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('73','familyName','familyName','Family Name','6','3','2013-10-29 10:38:18.038','-1','2','true','true','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('74','birthOrder','birthOrder','Birth Order','1','20','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('75','email','email','Email','6','16','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('76','suffix','suffix','Suffix','6','8','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('77','religion','religion','Religion','6','32','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('78','dateOfBirth','dateOfBirth','Date Of Birth','8','17','2013-10-29 10:38:18.038','-1','2','false','true','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('79','language','language','Language','6','31','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('80','familyName2','familyName2','Family Name 2','6','4','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('81','ethnicGroup','ethnicGroup','Ethnic Group','6','28','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('82','country','country','Country','6','14','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('83','givenName','givenName','Given Name','6','1','2013-10-29 10:38:18.038','-1','2','true','true','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('84','maritalStatusCode','maritalStatusCode','Marital Status Code','6','34','2013-10-29 10:38:18.038','-1','2','false','false','false','false');
INSERT INTO entity_attribute (entity_attribute_id,name,description,display_name,datatype_cd,display_order,date_created,created_by_id,entity_version_id,indexed,searchable,case_insensitive,is_custom) VALUES ('85','middleName','middleName','Middle Name','6','2','2013-10-29 10:38:18.038','-1','2','false','false','false','false');

INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('2','1','82');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('3','1','69');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('4','1','68');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('5','1','52');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('6','1','70');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('7','1','59');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('8','1','75');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('9','1','58');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('10','2','65');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('11','2','62');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('12','3','81');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('13','3','60');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('14','3','50');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('15','3','79');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('16','3','66');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('17','3','84');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('18','3','77');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('19','3','51');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('20','4','74');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('21','4','57');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('22','4','55');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('23','4','53');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('24','4','54');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('25','4','78');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('26','5','61');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('27','5','64');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('28','5','67');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('29','5','72');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('30','6','76');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('31','6','80');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('32','6','83');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('33','6','71');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('34','6','56');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('35','6','63');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('36','6','73');
INSERT INTO entity_attribute_group_attribute (entity_attribute_group_attribute_id,entity_attribute_group_id,entity_attribute_id) VALUES ('37','6','85');

INSERT INTO entity_attribute_validation (entity_attribute_validation_id,name,display_name,entity_attribute_id) VALUES ('1','regexpValidationRule','Regular Expression Validation Rule','75');
INSERT INTO entity_attribute_validation (entity_attribute_validation_id,name,display_name,entity_attribute_id) VALUES ('2','valueSetValidationRule','Value Set Validation Rule','66');

INSERT INTO entity_attribute_validation_param (entity_attribute_validation_param_id,name,value,entity_attribute_validation_id) VALUES ('2','regularExpression','\^([a-zA-Z0-9_.\\-+])+@(([a-zA-Z0-9\\-])+\\.)+[a-zA-Z0-9]{2,4}$','1');
INSERT INTO entity_attribute_validation_param (entity_attribute_validation_param_id,name,value,entity_attribute_validation_id) VALUES ('3','valueSet','M,F,O,U','2');








