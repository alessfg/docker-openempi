------------------------------------------
--Host     : localhost
--Database : openempi 3.0.0


SET SESSION AUTHORIZATION 'openempi';
SET search_path = public, pg_catalog;

-- DROP TABLE identifier_domain;
DROP TABLE IF EXISTS identifier_pre_update;
DROP TABLE IF EXISTS identifier_post_update;
DROP TABLE IF EXISTS identifier_update_event;
DROP TABLE IF EXISTS identifier_update_entry;

DROP TABLE IF EXISTS identifier_domain_attribute;
DROP TABLE IF EXISTS identifier_domain;

-- DROP TABLE report;
DROP TABLE IF EXISTS report_request;
DROP TABLE IF EXISTS report_query_parameter;
DROP TABLE IF EXISTS report_query;
DROP TABLE IF EXISTS report_parameter;
DROP TABLE IF EXISTS report;

-- DROP TABLE app_user;
DROP TABLE IF EXISTS user_role;
DROP TABLE IF EXISTS user_session;
DROP TABLE IF EXISTS user_file;
DROP TABLE IF EXISTS role_permission;
DROP TABLE IF EXISTS role;
DROP TABLE IF EXISTS app_user;

-- Structure for table app_user (OID = 34479):
CREATE TABLE app_user (
    id bigint NOT NULL,
    username varchar(50) NOT NULL,
    email varchar(255) NOT NULL,
    phone_number varchar(255),
    password_hint varchar(255),
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    website varchar(255),
    account_expired boolean NOT NULL,
    account_locked boolean NOT NULL,
    credentials_expired boolean NOT NULL,
    city varchar(50) NOT NULL,
    province varchar(100),
    postal_code varchar(15) NOT NULL,
    address varchar(150),
    country varchar(100),
    account_enabled boolean,
    "version" integer,
    "password" varchar(255) NOT NULL
) WITHOUT OIDS;

INSERT INTO app_user (id, username, email, phone_number, password_hint, first_name, last_name, website, account_expired, account_locked, credentials_expired, city, province, postal_code, address, country, account_enabled, "version", "password") VALUES (-2, 'user', 'support@sysnetint.com', '', 'A male kitty.', 'Open', 'Empi', 'http://www.sysnetint.com', false, false, false, 'Reston', 'VA', '20191', '', 'US', true, 1, '12dea96fec20593566ab75692c9949596833adc9');
INSERT INTO app_user (id, username, email, phone_number, password_hint, first_name, last_name, website, account_expired, account_locked, credentials_expired, city, province, postal_code, address, country, account_enabled, "version", "password") VALUES (-1, 'admin', 'odysseas@sysnetint.com', '', 'A male kitty.', 'Admin', 'User', 'http://www.sysnetint.com', false, false, false, 'Herndon', 'VA', '20171', '', 'US', true, 1, 'd033e22ae348aeb5660fc2140aec35850c4da997');
COMMIT;

-- Structure for table role (OID = 34546):
CREATE TABLE role (
    role_id bigint NOT NULL,
    name varchar(20),
    description varchar(64)
) WITHOUT OIDS;

INSERT INTO "role" (role_id, "name", description) VALUES
  (-1, 'ROLE_ADMIN', 'Administrator role (can edit Users)'),
  (-2, 'ROLE_USER', 'Default role for all users');

-- Structure for table user_role (OID = 34551):
CREATE TABLE user_role (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
) WITHOUT OIDS;

INSERT INTO user_role (user_id, role_id) VALUES
 (-1, -1),
 (-1, -2),
 (-2, -2),
 (-2, -1);

-- Structure for table identifier_domain (OID = 34498):
CREATE TABLE identifier_domain (
    identifier_domain_id integer NOT NULL,
    universal_identifier varchar(255),
    universal_identifier_type_code varchar(255),
    namespace_identifier varchar(255),
    date_created timestamp without time zone NOT NULL,
    creator_id bigint NOT NULL,
    identifier_domain_name varchar(64) NOT NULL,
    identifier_domain_description varchar(255)
) WITHOUT OIDS;

CREATE TABLE public.identifier_domain_attribute (
    identifier_domain_attribute_id  integer NOT NULL,
    identifier_domain_id            integer NOT NULL,
    attribute_name                  varchar(255) NOT NULL,
    attribute_value                 varchar(255) NOT NULL
) WITHOUT OIDS;

-- Structure for table user_session (OID = 34556):
CREATE TABLE user_session (
    session_id integer NOT NULL,
    date_created timestamp without time zone NOT NULL,
    date_modified timestamp without time zone,
    session_key varchar(255),
    user_id bigint NOT NULL
) WITHOUT OIDS;

-- Structure for table user_file:
CREATE TABLE user_file (
  user_file_id  integer NOT NULL,
  user_id       integer NOT NULL,
  "name"        varchar(255) NOT NULL,
  filename      varchar(255) NOT NULL,
  imported_ind  char NOT NULL DEFAULT 'N'::bpchar,
  rows_imported integer,
  rows_processed integer,
  is_entity 	boolean default false,
  profiled_ind 	character(1),
  profile_processed varchar(64),
  date_created  timestamp WITHOUT TIME ZONE NOT NULL
) WITHOUT OIDS;

-- Definition for sequence audit_event_seq
DROP SEQUENCE IF EXISTS audit_event_seq;
DROP SEQUENCE IF EXISTS hibernate_sequence;
DROP SEQUENCE IF EXISTS identifier_domain_seq;
DROP SEQUENCE IF EXISTS identifier_domain_attribute_seq;
DROP SEQUENCE IF EXISTS user_file_seq;
DROP SEQUENCE IF EXISTS user_session_seq;
DROP SEQUENCE IF EXISTS identifier_seq;

CREATE SEQUENCE audit_event_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

-- Definition for sequence hibernate_sequence (OID = 34671):
CREATE SEQUENCE hibernate_sequence
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

-- Definition for sequence identifier_domain_seq (OID = 34673):
CREATE SEQUENCE identifier_domain_seq
    START WITH 1000
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

-- Definition for sequence identifier_domain_attribute_seq
CREATE SEQUENCE identifier_domain_attribute_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

-- Definition for sequence user_file_seq:
CREATE SEQUENCE user_file_seq
    START WITH 10000
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

-- Definition for sequence user_session_seq (OID = 34681):
CREATE SEQUENCE user_session_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

-- Definition for sequence identifier_seq:
CREATE SEQUENCE identifier_seq
    START WITH 10000
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

INSERT INTO identifier_domain (identifier_domain_id, identifier_domain_name, identifier_domain_description, universal_identifier, universal_identifier_type_code, namespace_identifier, date_created, creator_id) VALUES
(10, 'SSN', 'Social Security Number', '2.16.840.1.113883.4.1', 'SSN', '2.16.840.1.113883.4.1', current_timestamp, -1),
(11, 'TIN', 'Taxpayer Identification Number', '2.16.840.1.113883.4.2', 'TIN', '2.16.840.1.113883.4.2', current_timestamp, -1),
(12, 'VirginiaDLN', 'Virginia Drivers License Number', '2.16.840.1.113883.4.3.51', 'VirginiaDLN', '2.16.840.1.113883.4.3.51', current_timestamp, -1),
(13, 'OpenMRS', 'OpenMRS Medical Record Number', '35a02490-5c20-11de-8ae4-001d60400e9e', 'OpenMRS', '35a02490-5c20-11de-8ae4-001d60400e9e', current_timestamp, -1),
(14, 'IHENA','IHENA', '1.3.6.1.4.1.21367.2010.1.2.300', 'ISO', 'IHENA', current_timestamp, -1),
(15, 'IHELOCAL','IHELOCAL', '1.3.6.1.4.1.21367.2010.1.2.310', 'IS', 'IHELOCAL', current_timestamp, -1),
(16, 'XREF2005','XREF2005', '1.3.6.1.4.1.21367.2005.1.2', 'ISO', 'XREF2005', current_timestamp, -1),
(17, 'HIMSS2005','HIMSS2005', '1.3.6.1.4.1.21367.2005.1.1', 'ISO', 'HIMSS2005', current_timestamp, -1),
(18, 'OpenEMPI','OpenEMPI GID', '2.16.840.1.113883.4.357', 'hl7', '2.16.840.1.113883.4.357', current_timestamp, -1);

-- Added support for NIST domain.
INSERT INTO identifier_domain (identifier_domain_id, identifier_domain_name, identifier_domain_description, universal_identifier, universal_identifier_type_code, namespace_identifier, date_created, creator_id) VALUES
(50, 'NIST2010', 'NIST2010 Test Domain', '2.16.840.1.113883.3.72.5.9.1', 'ISO', 'NIST2010', current_timestamp, -1),
(51, 'NIST2010-2', 'NIST2010 Test Domain', '2.16.840.1.113883.3.72.5.9.2', 'ISO', 'NIST2010-2', current_timestamp, -1),
(52, 'NIST2010-3', 'NIST2010 Test Domain', '2.16.840.1.113883.3.72.5.9.3', 'ISO', 'NIST2010-3', current_timestamp, -1),
(60, 'ECID', 'Global Identifier Domain', 'ECID', 'ECID', 'ECID', current_timestamp, -1);

-- Definition for index identifier_domain_namespace_identifier_key (OID = 34683):
CREATE UNIQUE INDEX identifier_domain_namespace_identifier_key ON identifier_domain USING btree (namespace_identifier);

-- Definition for index identifier_domain_universal_identifier (OID = 34684):
CREATE UNIQUE INDEX identifier_domain_universal_identifier ON identifier_domain USING btree (universal_identifier, universal_identifier_type_code);

-- Definition for index idx_identifier_domain_id
CREATE INDEX idx_identifier_domain_id ON public.identifier_domain_attribute USING btree (identifier_domain_id);

-- Definition for index role_name (OID = 34729):
CREATE UNIQUE INDEX role_name ON role USING btree (name);

-- Definition for index user_session_session_key (OID = 34740):
CREATE UNIQUE INDEX user_session_session_key ON user_session USING btree (session_key);

-- Definition for index user_session_date_created (OID = 34741):
CREATE INDEX user_session_date_created ON user_session USING btree (date_created);

-- Definition for index app_user_pkey (OID = 34482):
ALTER TABLE ONLY app_user
    ADD CONSTRAINT app_user_pkey PRIMARY KEY (id);

-- Definition for index app_user_username_key (OID = 34484):
ALTER TABLE ONLY app_user
    ADD CONSTRAINT app_user_username_key UNIQUE (username);

-- Definition for index app_user_email_key (OID = 34486):
ALTER TABLE ONLY app_user
    ADD CONSTRAINT app_user_email_key UNIQUE (email);

-- Definition for index identifier_domain_pkey (OID = 34501):
ALTER TABLE ONLY identifier_domain
    ADD CONSTRAINT identifier_domain_pkey PRIMARY KEY (identifier_domain_id);

-- Definition for index identifier_domain_attribute_pkey
ALTER TABLE ONLY identifier_domain_attribute
    ADD CONSTRAINT identifier_domain_attribute_pkey PRIMARY KEY (identifier_domain_attribute_id);

-- Definition for index role_pkey (OID = 34549):
ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);

-- Definition for index user_role_pkey (OID = 34554):
ALTER TABLE ONLY user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_id, role_id);

-- Definition for index user_session_pkey (OID = 34559):
ALTER TABLE ONLY user_session
    ADD CONSTRAINT user_session_pkey PRIMARY KEY (session_id);

-- Definition for index fk87a8451ade850683 (OID = 34561):
ALTER TABLE ONLY identifier_domain
    ADD CONSTRAINT fk87a8451ade850683 FOREIGN KEY (creator_id) REFERENCES app_user(id);

-- Definition for foreign key constraint on identifier_domain_id on table identifier_domain_attribute
ALTER TABLE ONLY identifier_domain_attribute
    ADD CONSTRAINT fk_identifier_domain_id FOREIGN KEY (identifier_domain_id) REFERENCES identifier_domain(identifier_domain_id) ON DELETE CASCADE ON UPDATE NO ACTION;

-- Definition for index fk_user_role_user (OID = 34730):
ALTER TABLE ONLY user_role
    ADD CONSTRAINT fk_user_role_user FOREIGN KEY (user_id) REFERENCES app_user(id);

-- Definition for index fk_user_role_role (OID = 34735):
ALTER TABLE ONLY user_role
    ADD CONSTRAINT fk_user_role_role FOREIGN KEY (role_id) REFERENCES role(role_id);

-- Definition for index fk_user_session_user (OID = 34742):
ALTER TABLE ONLY user_session
    ADD CONSTRAINT fk_user_session_user FOREIGN KEY (user_id) REFERENCES app_user(id);

ALTER TABLE ONLY user_file
    ADD CONSTRAINT user_files_pkey PRIMARY KEY (user_file_id);

ALTER TABLE ONLY user_file
    ADD CONSTRAINT fk_user_file_user FOREIGN KEY (user_id) REFERENCES app_user(id);

-- Structure for table link_source:
DROP TABLE IF EXISTS link_source;
CREATE TABLE link_source (
    link_source_id integer NOT NULL,
    source_name varchar(64) NOT NULL,
    source_description varchar(255)
) WITHOUT OIDS;

insert into link_source(link_source_id, source_name, source_description) values (1, 'Manual', 'Manually Matched');
insert into link_source(link_source_id, source_name, source_description) values (2, 'Exact', 'Exact Matching Algorithm');
insert into link_source(link_source_id, source_name, source_description) values (3, 'Probabilistic', 'Probabilistic Matching Algorithm');
insert into link_source(link_source_id, source_name, source_description) values (4, 'Gold', 'Gold Standard');
insert into link_source(link_source_id, source_name, source_description) values (5, 'Shallow', 'Shallow Matching Algorithm');

ALTER TABLE ONLY link_source
    ADD CONSTRAINT link_source_pkey PRIMARY KEY (link_source_id);

-- Table Report
CREATE TABLE report
(
 report_id integer NOT NULL,
 "name" character varying(64) NOT NULL,
 name_displayed character varying(255) NOT NULL,
 description character varying(255),
 template_name character varying(128) NOT NULL,
 data_generator character varying(128) NOT NULL,
 CONSTRAINT report_pkey PRIMARY KEY (report_id)
) WITHOUT OIDS;

ALTER TABLE report OWNER TO openempi;

-- Table: report_parameter
CREATE TABLE report_parameter
(
 report_parameter_id integer NOT NULL,
 "name" character varying(64) NOT NULL,
 name_displayed character varying(255) NOT NULL,
 description character varying(255),
 report_id integer NOT NULL,
 parameter_datatype integer NOT NULL, -- D - date...
 CONSTRAINT report_parameter_pkey PRIMARY KEY (report_parameter_id),
 CONSTRAINT fk_report FOREIGN KEY (report_id)
     REFERENCES report (report_id) MATCH SIMPLE
     ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITHOUT OIDS;
ALTER TABLE report_parameter OWNER TO openempi;

COMMENT ON COLUMN report_parameter.parameter_datatype IS 'D - date
I - integer
S - string
';

-- Table: report_query
CREATE TABLE report_query
(
 report_query_id integer NOT NULL,
 "name" character varying(64) NOT NULL,
 query text NOT NULL,
 report_id integer NOT NULL,
 CONSTRAINT report_query_pkey PRIMARY KEY (report_query_id),
 CONSTRAINT fk_report FOREIGN KEY (report_id)
     REFERENCES report (report_id) MATCH SIMPLE
     ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITHOUT OIDS;
ALTER TABLE report_query OWNER TO openempi;

-- Table: report_query_parameter
CREATE TABLE report_query_parameter
(
 report_query_parameter_id integer NOT NULL,
 report_parameter_id integer NOT NULL,
 parameter_name character varying(64) NOT NULL,
 report_query_id integer NOT NULL,
 required character(1) NOT NULL DEFAULT 'Y',
 substitution_key character varying(64),
 CONSTRAINT report_query_parameter_pkey PRIMARY KEY (report_query_parameter_id),
 CONSTRAINT fk_report_parameter FOREIGN KEY (report_parameter_id)
     REFERENCES report_parameter (report_parameter_id) MATCH SIMPLE
     ON UPDATE NO ACTION ON DELETE NO ACTION,
 CONSTRAINT fk_report_query FOREIGN KEY (report_query_id)
     REFERENCES report_query (report_query_id) MATCH SIMPLE
     ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITHOUT OIDS;
ALTER TABLE report_query_parameter OWNER TO openempi;

-- Table: report_request
CREATE TABLE report_request (
  report_request_id integer NOT NULL,
  report_id integer NOT NULL,
  user_requested_id bigint NOT NULL,
  date_requested timestamp with time zone NOT NULL,
  completed character varying(1) NOT NULL,
  report_handle character varying(255),
  date_completed timestamp with time zone,
  CONSTRAINT report_request_id_pkey
    PRIMARY KEY (report_request_id),
  CONSTRAINT fk_user_requested
    FOREIGN KEY (user_requested_id)
    REFERENCES app_user(id)
    ON DELETE NO ACTION ON UPDATE NO ACTION
)
WITHOUT OIDS;
ALTER TABLE report_request OWNER TO openempi;

DROP SEQUENCE IF EXISTS report_seq;
DROP SEQUENCE IF EXISTS report_query_seq;
DROP SEQUENCE IF EXISTS report_parameter_seq;
DROP SEQUENCE IF EXISTS report_query_parameter_seq;
DROP SEQUENCE IF EXISTS report_request_seq;
CREATE SEQUENCE report_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

CREATE SEQUENCE report_query_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

CREATE SEQUENCE report_parameter_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

CREATE SEQUENCE report_query_parameter_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

CREATE SEQUENCE report_request_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

CREATE UNIQUE INDEX report_name_unique_idx ON report USING btree (name);

ALTER TABLE report ADD CONSTRAINT report_name_key UNIQUE (name);


DROP TABLE IF EXISTS permission;
CREATE TABLE permission (
  permission_id bigint NOT NULL,
  permission_name varchar(50) NOT NULL,
  permission_description varchar(255) NOT NULL,
  CONSTRAINT permission_pkey
    PRIMARY KEY (permission_id)
) WITHOUT OIDS;

ALTER TABLE permission OWNER TO openempi;

INSERT INTO permission (permission_id, permission_name, permission_description) VALUES
  (1, 'RECORD_ADD', 'Allows the user to add an entity record into the database.'),
  (2, 'RECORD_DELETE', 'Allows the user to delete an entity record from the database.'),
  (3, 'RECORD_EDIT', 'Allows the user to modify the fields of an entity record from the database'),
  (4, 'RECORD_VIEW', 'Allows the user to retrieve entity records from the database.'),
  (5, 'IDENTIFIER_DOMAIN_ADD', 'Allows the user to add a new identifier domain.'),
  (6, 'IDENTIFIER_DOMAIN_DELETE', 'Allows the user to delete an identifier domain from the database.'),
  (7, 'IDENTIFIER_DOMAIN_EDIT', 'Allows the user to modify the fields of an identifier domain.'),
  (8, 'IDENTIFIER_DOMAIN_VIEW', 'Allows the user to retrieve identifier domain records from the database.'),
  (9, 'RECORD_LINKS_REVIEW', 'Allows the user to review and resolve potential record matches.'),
  (10, 'REPORT_GENERATE', 'Allows the user to request for a report to be generated.'),
  (11, 'REPORT_VIEW', 'Allows the user to view a report that has been previously generated.'),
  (12, 'CUSTOM_FIELDS_CONFIGURE', 'Allows the user to configure the list of custom fields and their definition.'),
  (13, 'BLOCKING_CONFIGURE', 'Allows the user to configure the blocking algorithm used by the system.'),
  (14, 'MATCHING_CONFIGURE', 'Allows the user to configure the matching algorithm used by the system.'),
  (15, 'FILE_IMPORT', 'Allows the user to import a data file into the system.'),
  (16, 'USER_ADD', 'Allows the user to add new users to the system.'),
  (17, 'USER_DELETE', 'Allows the user to delete a user account from the system.'),
  (18, 'USER_EDIT', 'Allows the user to modify the attributes of a user account.'),
  (19, 'USER_VIEW', 'Allows the user to view the attributes of a user account.'),
  (20, 'EVENT_CONFIGURATION_EDIT', 'Allows the user to manage the configuration of the event notification subsystem.'),
  (21, 'GLOBAL_IDENTIFIERS_EDIT', 'Allows the user to assign global identifiers to all the users in the repository.'),
  (22, 'PIXPDQ_MANAGE', 'Allows the user to start, stop and configure the PIX/PDQ service.');

CREATE TABLE role_permission (
  role_id        bigint NOT NULL,
  permission_id  integer NOT NULL,
  PRIMARY KEY (role_id, permission_id),
  /* Foreign keys */
  CONSTRAINT fk_permission_id
    FOREIGN KEY (permission_id)
    REFERENCES permission(permission_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_role_id
    FOREIGN KEY (role_id)
    REFERENCES "role"(role_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) WITHOUT OIDS;

ALTER TABLE role_permission OWNER TO openempi;

INSERT INTO role_permission (role_id, permission_id) VALUES
(-1, 1), (-1, 2), (-1, 3), (-1, 4), (-1, 5), (-1, 6),
(-1, 7), (-1, 8), (-1, 9), (-1, 10), (-1, 11), (-1, 12),
(-1, 13), (-1, 14), (-1, 15), (-1, 16), (-1, 17), (-1, 18),
(-1, 19), (-1, 20), (-1, 21), (-1, 22);

DROP SEQUENCE IF EXISTS cluster_seq;
CREATE SEQUENCE cluster_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

DROP TABLE IF EXISTS entity_attribute_group_attribute;
DROP TABLE IF EXISTS entity_attribute_group;
DROP TABLE IF EXISTS entity_attribute_validation_param;
DROP TABLE IF EXISTS entity_attribute_validation;
DROP TABLE IF EXISTS entity_attribute;
DROP TABLE IF EXISTS entity_attribute_datatype;
DROP TABLE IF EXISTS entity;

-- Table: entity
CREATE TABLE entity
(
  entity_version_id serial NOT NULL,
  entity_id integer NOT NULL,
  version_id integer NOT NULL,
  "name" character varying(64) NOT NULL,
  description character varying(256),
  display_name character varying(64) NOT NULL,
  synchronous_matching boolean NOT NULL DEFAULT true,
  date_created timestamp without time zone NOT NULL,
  created_by_id integer NOT NULL,
  date_changed timestamp without time zone,
  changed_by_id integer,
  date_voided timestamp without time zone,
  voided_by_id integer,
  CONSTRAINT entity_pkey PRIMARY KEY (entity_version_id)
) WITHOUT OIDS;

ALTER TABLE entity OWNER TO openempi;

CREATE TABLE entity_attribute_datatype
(
  datatype_cd integer NOT NULL,
  "name" character varying(64) NOT NULL,
  display_name character varying(64) NOT NULL,
  CONSTRAINT entity_attribute_datatype_pkey PRIMARY KEY (datatype_cd)
) WITHOUT OIDS;

ALTER TABLE entity_attribute_datatype OWNER TO openempi;

INSERT INTO entity_attribute_datatype (datatype_cd, "name", display_name) VALUES
  (1, 'integer', 'Integer'),
  (2, 'short', 'Short'),
  (3, 'long', 'Long'),
  (4, 'double', 'Double'),
  (5, 'float', 'Float'),
  (6, 'string', 'String'),
  (7, 'boolean', 'Boolean'),
  (8, 'date', 'Date'),
  (9, 'timestamp', 'Timestamp'),
  (10, 'linkset', 'Link Set'),
  (11, 'embeddedset', 'Embedded Set');

CREATE TABLE entity_attribute
(
  entity_attribute_id serial NOT NULL,
  "name" character varying(64) NOT NULL,
  description character varying(256),
  display_name character varying(64) NOT NULL,
  datatype_cd integer NOT NULL,
  display_order integer NOT NULL,
  date_created timestamp without time zone NOT NULL,
  created_by_id integer NOT NULL,
  date_changed timestamp without time zone,
  changed_by_id integer,
  date_voided timestamp without time zone,
  voided_by_id integer,
  entity_version_id integer NOT NULL,
  indexed boolean NOT NULL DEFAULT false,
  searchable boolean NOT NULL DEFAULT false,
  case_insensitive boolean NOT NULL DEFAULT false,
  is_custom boolean NOT NULL DEFAULT false,
  source_name character varying(256),
  transformation_function character varying(128),
  function_parameters character varying(256),
  CONSTRAINT entity_attribute_pkey PRIMARY KEY (entity_attribute_id),
  CONSTRAINT fk_entity_attribute_datatype FOREIGN KEY (datatype_cd)
      REFERENCES entity_attribute_datatype (datatype_cd) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_entity_version_id FOREIGN KEY (entity_version_id)
      REFERENCES entity (entity_version_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE
) WITHOUT OIDS;

ALTER TABLE entity_attribute OWNER TO openempi;

CREATE TABLE entity_attribute_group
(
  entity_attribute_group_id integer NOT NULL,
  "name" character varying(64) NOT NULL,
  display_name character varying(64) NOT NULL,
  display_order integer NOT NULL,
  entity_version_id integer NOT NULL,
  CONSTRAINT entity_attribute_group_pkey PRIMARY KEY (entity_attribute_group_id),
  CONSTRAINT fk_entity_group_entity FOREIGN KEY (entity_version_id)
      REFERENCES entity (entity_version_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
) WITHOUT OIDS;

ALTER TABLE entity_attribute_group OWNER TO openempi;

CREATE TABLE entity_attribute_group_attribute
(
  entity_attribute_group_attribute_id integer NOT NULL,
  entity_attribute_group_id integer NOT NULL,
  entity_attribute_id integer NOT NULL,
  CONSTRAINT entity_attribute_group_attribute_pkey PRIMARY KEY (entity_attribute_group_attribute_id),
  CONSTRAINT fk_entity_attribute_group FOREIGN KEY (entity_attribute_group_id)
      REFERENCES entity_attribute_group (entity_attribute_group_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_entity_attribute FOREIGN KEY (entity_attribute_id)
      REFERENCES entity_attribute (entity_attribute_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
) WITHOUT OIDS;

ALTER TABLE entity_attribute_group_attribute OWNER TO openempi;

CREATE TABLE entity_attribute_validation
(
  entity_attribute_validation_id integer NOT NULL,
  "name" character varying(64) NOT NULL,
  display_name character varying(64) NOT NULL,
  entity_attribute_id integer NOT NULL,
  CONSTRAINT entity_attribute_validation_pkey PRIMARY KEY (entity_attribute_validation_id),
  CONSTRAINT fk_entity_attribute FOREIGN KEY (entity_attribute_id)
      REFERENCES entity_attribute (entity_attribute_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
) WITHOUT OIDS;

ALTER TABLE entity_attribute_validation OWNER TO openempi;

CREATE TABLE entity_attribute_validation_param
(
  entity_attribute_validation_param_id integer NOT NULL,
  "name" character varying(64) NOT NULL,
  "value" character varying(256) NOT NULL,
  entity_attribute_validation_id integer NOT NULL,
  CONSTRAINT entity_attribute_validation_param_pkey PRIMARY KEY (entity_attribute_validation_param_id),
  CONSTRAINT fk_entity_attribute_validation FOREIGN KEY (entity_attribute_validation_id)
      REFERENCES entity_attribute_validation (entity_attribute_validation_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
) WITHOUT OIDS;

ALTER TABLE entity_attribute_validation_param OWNER TO openempi;

DROP SEQUENCE IF EXISTS entity_seq;
CREATE SEQUENCE entity_seq START WITH 100 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
DROP SEQUENCE IF EXISTS entity_attribute_seq;
CREATE SEQUENCE entity_attribute_seq START WITH 100 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
DROP SEQUENCE IF EXISTS entity_attribute_group_seq;
CREATE SEQUENCE entity_attribute_group_seq START WITH 100 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
DROP SEQUENCE IF EXISTS entity_attribute_validation_seq;
CREATE SEQUENCE entity_attribute_validation_seq START WITH 100 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;


DROP SEQUENCE IF EXISTS data_profile_seq;
DROP SEQUENCE IF EXISTS data_profile_attribute_seq;
DROP SEQUENCE IF EXISTS data_profile_attribute_value_seq;
CREATE SEQUENCE data_profile_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

CREATE SEQUENCE data_profile_attribute_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

CREATE SEQUENCE data_profile_attribute_value_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

-- Table: data_profile
DROP TABLE IF EXISTS data_profile_attribute_value;
DROP TABLE IF EXISTS data_profile_attribute;
DROP TABLE IF EXISTS data_profile;

CREATE TABLE data_profile
(
  data_profile_id integer NOT NULL,
  date_initiated  timestamp without time zone NOT NULL,
  date_completed  timestamp without time zone,
  entity_version_id integer,
  data_source_id integer,
  CONSTRAINT data_profile_pkey PRIMARY KEY (data_profile_id)
) WITHOUT OIDS;
ALTER TABLE data_profile OWNER TO openempi;

-- Table: data_profile_attribute
CREATE TABLE data_profile_attribute
(
  attribute_id integer NOT NULL,
  data_profile_id integer NOT NULL,
  attribute_name character varying(255) NOT NULL,
  datatype_id integer NOT NULL,
  average_length real,
  minimum_length integer,
  maximum_length integer,
  average_value double precision,
  minimum_value double precision,
  maximum_value double precision,
  variance real,
  standard_deviation real,
  row_count integer,
  distinct_count integer,
  duplicate_count integer,
  unique_count integer,
  null_count integer,
  null_rate real,
  entropy real,
  maximum_entropy real,
  u_value real,
  average_token_frequency real,
  blocking_pairs integer,
  CONSTRAINT data_profile_attribute_pkey PRIMARY KEY (attribute_id),
  CONSTRAINT fk_data_profile_id FOREIGN KEY (data_profile_id)
      REFERENCES data_profile (data_profile_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE
) WITHOUT OIDS;
ALTER TABLE data_profile_attribute OWNER TO openempi;

-- Table: data_profile_attribute_value
CREATE TABLE data_profile_attribute_value
(
  attribute_value_id integer NOT NULL,
  attribute_id integer NOT NULL,
  attribute_value character varying(1024),
  frequency integer NOT NULL,
  CONSTRAINT data_profile_value_pkey PRIMARY KEY (attribute_value_id),
  CONSTRAINT fk_data_profile_attribute_id FOREIGN KEY (attribute_id)
      REFERENCES data_profile_attribute (attribute_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE
) WITHOUT OIDS;
ALTER TABLE data_profile_attribute_value OWNER TO openempi;

-- Index: idx_attribute_id

-- DROP INDEX idx_attribute_id;

CREATE INDEX idx_attribute_id
  ON data_profile_attribute_value
  USING btree
  (attribute_id);


DROP TABLE IF EXISTS audit_event;
DROP TABLE IF EXISTS audit_event_type;
CREATE TABLE audit_event (
    audit_event_id bigint NOT NULL,
    date_created timestamp without time zone NOT NULL,
    audit_event_type_cd integer NOT NULL,
    audit_event_description varchar(255),
    entity_name varchar(255),
    ref_record_id bigint,
    alt_ref_record_id bigint,
    creator_id integer NOT NULL
) WITHOUT OIDS;

-- Structure for table audit_event_type (OID = 59461):
CREATE TABLE audit_event_type (
    audit_event_type_cd integer NOT NULL,
    audit_event_type_name varchar(64) NOT NULL,
    audit_event_type_description varchar(255),
    audit_event_type_code varchar(64) NOT NULL
) WITHOUT OIDS;

-- Definition for index idx_audit_event_type_code (OID = 59468):
CREATE INDEX idx_audit_event_type_code ON audit_event_type USING btree (audit_event_type_code);

-- Definition for index audit_event_type_pkey (OID = 59464):
ALTER TABLE ONLY audit_event_type
    ADD CONSTRAINT audit_event_type_pkey PRIMARY KEY (audit_event_type_cd);

INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (6, 'Add Identifier Domain Attribute', 'Add a new identifier domain attribute', 'AIA');
INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (7, 'Obtain Identifier Domain', 'Obtain a new unique identifier domain of a given type', 'OID');
INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (8, 'Delete Identifier Domain Attribute', 'Delete an identifier domain attribute', 'DID');
INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (9, 'Update Identifier Domain Attribute', 'Update an identifier domain attribute', 'UID');

INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (101, 'Add Record', 'Add new record', 'ADDR');
INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (102, 'Delete Record', 'Delete a record', 'DELR');
INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (103, 'Import Record', 'Import a record', 'IMPR');
INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (104, 'Merge Record', 'Merge a record with another', 'MRGR');
INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (105, 'Update Record', 'Update a record', 'UPDR');
INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (110, 'Unmerge Record', 'Unmerge a record from another', 'UMGR');
INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (111, 'Link Records', 'Link two records together.', 'LNKR');
INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (112, 'Unlink Records', 'Unlink two records from each other', 'ULKR');

ALTER TABLE ONLY audit_event
    ADD CONSTRAINT audit_event_new_pkey PRIMARY KEY (audit_event_id);

-- Definition for index fk_audit_event_type_cd (OID = 59469):
ALTER TABLE ONLY audit_event
    ADD CONSTRAINT fk_audit_event_new_type_cd FOREIGN KEY (audit_event_type_cd) REFERENCES audit_event_type(audit_event_type_cd);

DROP SEQUENCE IF EXISTS message_log_seq;
DROP SEQUENCE IF EXISTS identifier_event_seq;

-- Table: message_log
DROP TABLE IF EXISTS message_log;

-- Table message_type
DROP TABLE IF EXISTS message_type;

CREATE TABLE message_type (
    message_type_cd integer NOT NULL,
    message_type_name varchar(64) NOT NULL,
    message_type_description varchar(255),
    message_type_code varchar(64) NOT NULL
) WITHOUT OIDS;

INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (1, 'Admit Notification', 'Admit/visit notification', 'ADT_A01');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (2, 'Acknowledgement', 'General Application Acknowledgement', 'ACK');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (3, 'Admit/Visit', 'Admin/Visit Notification (event A01)', 'A01');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (4, 'Register Patient', 'Register a Patient (event A04)', 'A04');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (5, 'Update Patient', 'Update Patient Information (event A08)', 'A08');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (6, 'Merge Patient', 'Merge Patient - Patient Identifier List (event A40)', 'A40');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (7, 'Get Person Demographics', 'Get Person Demographics (event Q21)', 'Q21');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (8, 'Find Candidates', 'Find Candidates (event Q22)', 'Q22');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (9, 'Get Corresponding Identifiers', 'Get Corresponding Identifiers (event Q23)', 'Q23');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (10, 'Update Notification', 'Update Notification (event A31)', 'A31');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (11, 'XAD Update Notification', 'XAD Update Notification (event A43)', 'A43');

INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (12, 'Add Patient HL7v3', 'Patient Registry Record Added (PRPA_IN201301UV02)', 'urn:hl7-org:v3:PRPA_IN201301UV02');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (13, 'Update Patient HL7v3', 'Patient Registry Record Revised (PRPA_IN201302UV02)', 'urn:hl7-org:v3:PRPA_IN201302UV02');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (14, 'Merge Patient HL7v3', 'Patient Registry Duplicates Resolved (PRPA_IN201304UV02)', 'urn:hl7-org:v3:PRPA_IN201304UV02');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (15, 'Get Identifiers HL7v3', 'Patient Registry Get Identifiers Query (PRPA_IN201309UV02)', 'urn:hl7-org:v3:PRPA_IN201309UV02');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (16, 'Get Identifiers Response HL7v3', 'Patient Registry Get Identifiers Query Response (PRPA_IN201309UV02)', 'urn:hl7-org:v3:PRPA_IN201310UV02');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (17, 'Find Candidates HL7v3', 'Patient Registry Find Candidates Query (PRPA_IN201305UV02', 'urn:hl7-org:v3:PRPA_IN201305UV02');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (18, 'Find Candidates Response HL7v3', 'Patient Registry Find Candidates Query Response (PRPA_IN201305UV02', 'urn:hl7-org:v3:PRPA_IN201306UV02');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (19, 'Query Continue HL7v3', 'General Query Activate Query Continue (QUQI_IN000003UV01)', 'urn:hl7-org:v3:QUQI_IN000003UV01');
INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (20, 'Query Cancellation HL7v3', 'Query Control Act Request Continue/Cancel (QUQI_IN000001UV01)', 'urn:hl7-org:v3:QUQI_IN000003UV01_Cancel');


INSERT INTO message_type (message_type_cd, message_type_name, message_type_description, message_type_code) VALUES (99, 'Unknown', 'Unknown Message Type', 'UNKNOWN');

CREATE TABLE message_log (
  message_log_id         integer NOT NULL PRIMARY KEY,
  incoming_message       text NOT NULL,
  outgoing_message       text,
  incoming_message_type_cd integer NOT NULL,
  outgoing_message_type_cd  integer,
  date_received          timestamp WITH TIME ZONE NOT NULL
) WITHOUT OIDS;

ALTER TABLE ONLY message_type
    ADD CONSTRAINT message_type_pkey PRIMARY KEY (message_type_cd);

ALTER TABLE ONLY message_type
    ADD CONSTRAINT idx_message_type_name UNIQUE (message_type_name);

ALTER TABLE ONLY message_log
    ADD CONSTRAINT fk_inmessage_type_cd FOREIGN KEY (incoming_message_type_cd) REFERENCES message_type (message_type_cd);

ALTER TABLE ONLY message_log
    ADD CONSTRAINT fk_outmessage_type_cd FOREIGN KEY (outgoing_message_type_cd) REFERENCES message_type (message_type_cd);

CREATE INDEX idx_incoming_message_type ON message_log (incoming_message_type_cd);

CREATE INDEX idx_date_received ON message_log (date_received);

CREATE INDEX idx_message_type_code ON message_type USING btree (message_type_code);

ALTER TABLE message_log OWNER TO openempi;

CREATE SEQUENCE message_log_seq INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;

CREATE SEQUENCE identifier_event_seq INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;

CREATE TABLE identifier_update_event (
  identifier_update_event_id  integer NOT NULL PRIMARY KEY,
  update_recipient_id         integer NOT NULL,
  date_created                timestamp WITH TIME ZONE NOT NULL,
  source                      varchar(64) NOT NULL,
  transition                  varchar(64) NOT NULL,
  /* Foreign keys */
  CONSTRAINT fk_update_recipient_id
    FOREIGN KEY (update_recipient_id)
    REFERENCES app_user(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) WITHOUT OIDS;

ALTER TABLE identifier_update_event OWNER TO openempi;

CREATE TABLE identifier_update_entry (
  identifier_update_entry_id  integer NOT NULL PRIMARY KEY,
  identifier_domain_id        integer NOT NULL,
  identifier                  varchar(255) NOT NULL,
  /* Foreign keys */
  CONSTRAINT fk_identifier_domain_id
    FOREIGN KEY (identifier_domain_id)
    REFERENCES identifier_domain(identifier_domain_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) WITHOUT OIDS;

ALTER TABLE identifier_update_entry OWNER TO openempi;

CREATE TABLE identifier_pre_update (
  identifier_update_event_id  integer NOT NULL,
  identifier_update_entry_id  integer NOT NULL,
  /* Foreign keys */
  CONSTRAINT fk_identifier_update_entry_id
    FOREIGN KEY (identifier_update_entry_id)
    REFERENCES identifier_update_entry(identifier_update_entry_id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT identifier_update_event_id
    FOREIGN KEY (identifier_update_event_id)
    REFERENCES identifier_update_event(identifier_update_event_id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
) WITHOUT OIDS;

ALTER TABLE identifier_pre_update OWNER TO openempi;

CREATE TABLE identifier_post_update (
  identifier_update_event_id  integer NOT NULL,
  identifier_update_entry_id  integer NOT NULL,
  /* Foreign keys */
  CONSTRAINT fk_identifier_update_entry_id
    FOREIGN KEY (identifier_update_entry_id)
    REFERENCES identifier_update_entry(identifier_update_entry_id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT identifier_update_event_id
    FOREIGN KEY (identifier_update_event_id)
    REFERENCES identifier_update_event(identifier_update_event_id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
) WITHOUT OIDS;

ALTER TABLE identifier_post_update OWNER TO openempi;

-- Definition for sequence link_log_seq
DROP SEQUENCE IF EXISTS link_log_seq;
CREATE SEQUENCE link_log_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

DROP TABLE IF EXISTS link_log;
CREATE TABLE link_log (
    link_id integer NOT NULL PRIMARY KEY,
    entity_version_id integer NOT NULL,
    rh_record_id integer NOT NULL,
    lh_record_id integer NOT NULL,
    date_created timestamp without time zone NOT NULL,
    creator_id integer NOT NULL,
    weight double precision,
    vector_value integer NOT NULL
) WITHOUT OIDS;

CREATE INDEX idx_link_log_vector_value ON link_log (vector_value);
CREATE INDEX idx_link_log_weight ON link_log (weight);

DROP TABLE IF EXISTS job_entry_event_log;
DROP TABLE IF EXISTS job_entry;

-- Table: job_type
DROP TABLE IF EXISTS job_type;
CREATE TABLE job_type
(
  job_type_cd integer NOT NULL,
  job_type_name varchar(64) NOT NULL,
  job_type_description varchar(255),
  job_type_handler varchar(255) NOT NULL,
  CONSTRAINT job_type_pkey PRIMARY KEY (job_type_cd ),
  CONSTRAINT idx_job_type_name UNIQUE (job_type_name )
) WITHOUT OIDS;

ALTER TABLE job_type OWNER TO openempi;

CREATE INDEX idx_job_type_code ON job_type (job_type_cd );

INSERT INTO job_type
(job_type_cd, job_type_name, job_type_description, job_type_handler) VALUES
( 1, 'File Import', 'Job imports a file into the repository', 'fileImportJobHandler'),
( 2, 'Blocking Initialization', 'Job initializes the blocking algorithm by re-indexing all data', 'blockingInitializationJobHandler'),
( 3, 'Matching Initialization', 'Job initializes the matching algorithm by configuring the underlying model', 'matchingInitializationJobHandler'),
( 4, 'Match Repository Data', 'Job runs the currently configured matching algorithm against all data in the repository.', 'matchingAllPairsJobHandler'),
( 5, 'Entity Import', 'Job imports an entity definition into the system', 'entityImportEntityJobHandler'),
( 6, 'Data Profiling', 'Job runs the data profiler against all the data in the repository', 'dataProfilingJobHandler'),
( 7, 'Generate Custom Fields', 'Job generates custom field data for all the records in the repository', 'customFieldGenerationJobHandler'),
( 8, 'Assign Global Identifiers', 'Job assigns global identifiers to all records in the repository that do not have one already', 'globalIdGenerationJobHandler');

-- Table: job_status
DROP TABLE IF EXISTS job_status;
CREATE TABLE job_status
(
  job_status_cd integer NOT NULL,
  job_status_name varchar(64) NOT NULL,
  job_status_description varchar(255),
  CONSTRAINT job_status_pkey PRIMARY KEY (job_status_cd ),
  CONSTRAINT idx_job_status_name UNIQUE (job_status_name )
) WITHOUT OIDS;

ALTER TABLE job_status OWNER TO openempi;

INSERT INTO job_status
(job_status_cd, job_status_name, job_status_description) VALUES
( 1, 'Queued', 'The job is currently in the queue awaiting to be processed'),
( 2, 'In Processing', 'The job is currently being processed by the system'),
( 3, 'Completed', 'The job completed processing');

-- Table: job_entry
CREATE TABLE job_entry
(
   job_entry_id integer NOT NULL,
   job_type_cd integer NOT NULL,
   job_status_cd integer NOT NULL,
   job_description varchar(255),
   job_parameters varchar(1024),
   entity_version_id integer NOT NULL,
   date_created timestamp with time zone NOT NULL,
   date_started timestamp with time zone,
   date_completed timestamp without time zone,
   items_processed integer DEFAULT 0,
   items_successful integer DEFAULT 0,
   items_errored integer DEFAULT 0,
   CONSTRAINT job_entry_pk PRIMARY KEY (job_entry_id),
   CONSTRAINT fk_job_entry_job_type_code FOREIGN KEY (job_type_cd) REFERENCES job_type (job_type_cd) ON UPDATE NO ACTION ON DELETE NO ACTION,
   CONSTRAINT fk_job_entry_entity_version_id FOREIGN KEY (entity_version_id) REFERENCES entity (entity_version_id) ON UPDATE NO ACTION ON DELETE NO ACTION,
   CONSTRAINT fk_job_entry_job_status_code FOREIGN KEY (job_status_cd) REFERENCES job_status (job_status_cd) ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE job_entry OWNER TO openempi;

CREATE INDEX idx_job_entry_date_created ON job_entry (date_created );

-- Table: job_entry_event_log
CREATE TABLE job_entry_event_log
(
   job_entry_event_log_id integer NOT NULL,
   job_entry_id integer NOT NULL,
   log_message varchar(255) NOT NULL,
   date_created timestamp with time zone NOT NULL,
   CONSTRAINT job_entry_event_log_pk PRIMARY KEY (job_entry_event_log_id),
   CONSTRAINT fk_job_entry_id FOREIGN KEY (job_entry_id) REFERENCES job_entry (job_entry_id) ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE job_entry_event_log OWNER TO openempi;

DROP SEQUENCE IF EXISTS job_entry_seq;
CREATE SEQUENCE job_entry_seq INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;

DROP SEQUENCE IF EXISTS job_entry_event_log_seq;
CREATE SEQUENCE job_entry_event_log_seq INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
