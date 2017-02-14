------------------------------------------
--Host     : localhost
--Database : openempi



SET SESSION AUTHORIZATION 'openempi';
SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.person DROP CONSTRAINT fk_name_type;
ALTER TABLE ONLY public.person DROP CONSTRAINT fk_created_by_app_user;
ALTER TABLE ONLY public.person DROP CONSTRAINT fk_race;
ALTER TABLE ONLY public.person DROP CONSTRAINT fk_gender;
ALTER TABLE ONLY public.person DROP CONSTRAINT fk_religion;
ALTER TABLE ONLY public.person DROP CONSTRAINT fk_ethnic_group;
ALTER TABLE ONLY public.person DROP CONSTRAINT fk_changed_by_app_user;
ALTER TABLE ONLY public.person DROP CONSTRAINT fk_language;
ALTER TABLE ONLY public.person DROP CONSTRAINT fk_nationality;
ALTER TABLE ONLY public.person DROP CONSTRAINT fk_address_type;
ALTER TABLE ONLY public.person DROP CONSTRAINT fk_voided_by_app_user;
ALTER TABLE ONLY public.user_session DROP CONSTRAINT fk_user_session_user;
ALTER TABLE ONLY public.user_role DROP CONSTRAINT fk_user_role_role;
ALTER TABLE ONLY public.user_role DROP CONSTRAINT fk_user_role_user;
ALTER TABLE ONLY public.person_link DROP CONSTRAINT fk_created_by_app_user;
ALTER TABLE ONLY public.person_link DROP CONSTRAINT fk_person_rh;
ALTER TABLE ONLY public.person_link DROP CONSTRAINT fk_person_lh;
ALTER TABLE ONLY public.person_identifier DROP CONSTRAINT fk_person;
ALTER TABLE ONLY public.person_identifier DROP CONSTRAINT fk_created_by_app_user;
ALTER TABLE ONLY public.person_identifier DROP CONSTRAINT fk_voided_by_app_user;
ALTER TABLE ONLY public.person_identifier DROP CONSTRAINT fk_identifier_domain;
ALTER TABLE ONLY public.identifier_domain DROP CONSTRAINT fk87a8451ade850683;
ALTER TABLE ONLY public.identifier_domain_attribute DROP CONSTRAINT fk_identifier_domain_id;
ALTER TABLE ONLY public.user_session DROP CONSTRAINT user_session_pkey;
ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
ALTER TABLE ONLY public."role" DROP CONSTRAINT role_pkey;
ALTER TABLE ONLY public.religion DROP CONSTRAINT religion_pkey;
ALTER TABLE ONLY public.race DROP CONSTRAINT race_pkey;
ALTER TABLE ONLY public.person_link DROP CONSTRAINT person_link_pkey;
ALTER TABLE ONLY public.person_identifier DROP CONSTRAINT person_identifier_pkey;
ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey CASCADE;
ALTER TABLE ONLY public.nationality DROP CONSTRAINT nationality_pkey;
ALTER TABLE ONLY public.name_type DROP CONSTRAINT name_type_pkey;
ALTER TABLE ONLY public."language" DROP CONSTRAINT language_pkey;
ALTER TABLE ONLY public.identifier_domain DROP CONSTRAINT identifier_domain_pkey;
ALTER TABLE ONLY public.identifier_domain_attribute DROP CONSTRAINT identifier_domain_attribute_pkey;
ALTER TABLE ONLY public.gender DROP CONSTRAINT gender_pkey;
ALTER TABLE ONLY public.ethnic_group DROP CONSTRAINT ethnic_group_pkey;
ALTER TABLE ONLY public.app_user DROP CONSTRAINT app_user_email_key;
ALTER TABLE ONLY public.app_user DROP CONSTRAINT app_user_username_key;
ALTER TABLE ONLY public.app_user DROP CONSTRAINT app_user_pkey CASCADE;
ALTER TABLE ONLY public.address_type DROP CONSTRAINT address_type_pkey;
ALTER TABLE ONLY public.audit_event DROP CONSTRAINT fk_audit_event_type_cd;
ALTER TABLE ONLY public.audit_event_type DROP CONSTRAINT idx_audit_event_type_name;
ALTER TABLE ONLY public.audit_event_type DROP CONSTRAINT audit_event_type_pkey;
ALTER TABLE ONLY public.audit_event DROP CONSTRAINT audit_event_pkey;


DROP INDEX public.user_session_date_created;
DROP INDEX public.user_session_session_key;
DROP INDEX public.role_name;
DROP INDEX public.person_link_lh_person;
DROP INDEX public.person_link_rh_person;
DROP INDEX public.person_identifier_identifier_domain;
DROP INDEX public.person_identifier_person_id;
DROP INDEX public.identifier_domain_universal_identifier;
DROP INDEX public.identifier_domain_namespace_identifier_key;
DROP INDEX public.idx_audit_event_type_code;
DROP INDEX public.idx_audit_event_ref_person;

DROP SEQUENCE public.user_session_seq;
DROP SEQUENCE public.person_seq;
DROP SEQUENCE public.person_link_seq;
DROP SEQUENCE public.person_identifier_seq;
DROP SEQUENCE public.identifier_domain_seq;
DROP SEQUENCE public.identifier_domain_attribute_seq;
DROP SEQUENCE public.identifier_seq;
DROP SEQUENCE public.hibernate_sequence;
DROP SEQUENCE public.audit_event_seq;
DROP SEQUENCE public.person_link_review_seq;
DROP SEQUENCE public.user_file_seq;

DROP TABLE public.user_session;
DROP TABLE public.user_role;
DROP TABLE public."role";
DROP TABLE public.religion;
DROP TABLE public.race;
DROP TABLE public.person_link_review;
DROP TABLE public.audit_event;
DROP TABLE public.audit_event_type;
DROP TABLE public.person_link;
DROP TABLE public.person_identifier;
DROP TABLE public.person;
DROP TABLE public.nationality;
DROP TABLE public.name_type;
DROP TABLE public."language";
DROP TABLE public.identifier_domain;
DROP TABLE public.identifier_domain_attribute;
DROP TABLE public.gender;
DROP TABLE public.ethnic_group;
DROP TABLE public.user_file;
DROP TABLE public.app_user;
DROP TABLE public.address_type;
DROP TABLE public.phone_type;

