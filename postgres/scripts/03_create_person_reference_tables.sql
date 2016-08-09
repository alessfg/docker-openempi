------------------------------------------
--Host     : localhost
--Database : openempi 3.0.0

SET SESSION AUTHORIZATION 'openempi';
SET search_path = public, pg_catalog;

-- Structure for table address_type (OID = 34474):
DROP TABLE IF EXISTS address_type;
CREATE TABLE address_type (
    address_type_cd integer NOT NULL,
    address_type_name varchar(64) NOT NULL,
    address_type_description varchar(255),
    address_type_code varchar(64) NOT NULL
) WITHOUT OIDS;

INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (1, 'Bad Address', 'Bad Address', 'BA');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (2, 'Billing Address', 'Billing Address', 'BI');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (3, 'Birth Address', 'Birth Address', 'N');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (4, 'Birth Delivery Location', 'Birth Delivery Address', 'BDL');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (5, 'Country of Origin', 'Country of Origin', 'F');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (6, 'Current or Temporary', 'Current or Temporary', 'C');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (7, 'Firm/Business', 'Firm/Business', 'B');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (8, 'Home', 'Home', 'H');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (9, 'Legal Address', 'Legal Address', 'L');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (10, 'Mailing', 'Mailing', 'M');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (11, 'Office/Business', 'Office/Business', 'O');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (12, 'Permanent', 'Permanent', 'P');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (13, 'Registry Home', 'Registry home refers to the information system, typically managed by a public health agency, that stores patient information', 'RH');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (14, 'Residence at birth', 'Residence at birth (home address at time of birth)', 'BR');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (15, 'Service Location', 'Refers to the location in which service is rendered', 'S');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (16, 'Shipping Address', 'Shipping Address', 'SH');
INSERT INTO address_type (address_type_cd, address_type_name, address_type_description, address_type_code) values (17, 'Vacation', 'Vacation', 'V');


-- Structure for table ethnic_group (OID = 34488):
DROP TABLE IF EXISTS ethnic_group;
CREATE TABLE ethnic_group (
    ethnic_group_cd integer NOT NULL,
    ethnic_group_name varchar(64) NOT NULL,
    ethnic_group_description varchar(255),
    ethnic_group_code varchar(64) NOT NULL
) WITHOUT OIDS;

insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (1,'Hispanic or Latino','Hispanic or Latino','2135-2');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (2,'Spaniard','Spaniard','2137-8');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (3,'Andalusian','Andalusian','2138-6');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (4,'Asturian','Asturian','2139-4');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (5,'Castillian','Castillian','2140-2');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (6,'Catalonian','Catalonian','2141-0');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (7,'Belearic Islander','Belearic Islander','2142-8');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (8,'Gallego','Gallego','2143-6');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (9,'Valencian','Valencian','2144-4');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (10,'Canarian','Canarian','2145-1');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (11,'Spanish Basque','Spanish Basque','2146-9');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (12,'Mexican','Mexican','2148-5');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (13,'Mexican American','Mexican American','2149-3');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (14,'Mexicano','Mexicano','2150-1');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (15,'Chicano','Chicano','2151-9');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (16,'La Raza','La Raza','2152-7');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (17,'Mexican American Indian','Mexican American Indian','2153-5');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (18,'Central American','Central American','2155-0');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (19,'Costa Rican','Costa Rican','2156-8');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (20,'Guatemalan','Guatemalan','2157-6');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (21,'Honduran','Honduran','2158-4');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (22,'Nicaraguan','Nicaraguan','2159-2');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (23,'Panamanian','Panamanian','2160-0');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (24,'Salvadoran','Salvadoran','2161-8');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (25,'Central American Indian','Central American Indian','2162-6');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (26,'Canal Zone','Canal Zone','2163-4');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (27,'South American','South American','2165-9');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (28,'Argentinean','Argentinean','2166-7');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (29,'Bolivian','Bolivian','2167-5');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (30,'Chilean','Chilean','2168-3');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (31,'Colombian','Colombian','2169-1');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (32,'Ecuadorian','Ecuadorian','2170-9');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (33,'Paraguayan','Paraguayan','2171-7');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (34,'Peruvian','Peruvian','2172-5');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (35,'Uruguayan','Uruguayan','2173-3');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (36,'Venezuelan','Venezuelan','2174-1');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (37,'South American Indian','South American Indian','2175-8');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (38,'Criollo','Criollo','2176-6');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (39,'Latin American','Latin American','2178-2');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (40,'Puerto Rican','Puerto Rican','2180-8');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (41,'Cuban','Cuban','2182-4');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (42,'Dominican','Dominican','2184-0');
insert into ethnic_group (ethnic_group_cd, ethnic_group_name, ethnic_group_description, ethnic_group_code) values (43,'Not Hispanic or Latino','Not Hispanic or Latino','2186-5');

-- Structure for table gender (OID = 34493):
DROP TABLE IF EXISTS gender;
CREATE TABLE gender (
    gender_cd integer NOT NULL,
    gender_name varchar(64) NOT NULL,
    gender_description varchar(255),
    gender_code varchar(64) NOT NULL
) WITHOUT OIDS;

insert into gender (gender_cd, gender_name, gender_description, gender_code) values (1, 'Female', 'Female', 'F');
insert into gender (gender_cd, gender_name, gender_description, gender_code) values (2, 'Male', 'Male', 'M');
insert into gender (gender_cd, gender_name, gender_description, gender_code) values (3, 'Other', 'Other', 'O');
insert into gender (gender_cd, gender_name, gender_description, gender_code) values (4, 'Unknown', 'Unknown', 'U');

-- Structure for table language (OID = 34503):
DROP TABLE IF EXISTS "language";
CREATE TABLE "language" (
    language_cd integer NOT NULL,
    language_name varchar(64) NOT NULL,
    language_description varchar(255),
    language_code varchar(64) NOT NULL
) WITHOUT OIDS;

insert into language (language_cd, language_name, language_description, language_code) values (1,'Afar','Afar','aa');
insert into language (language_cd, language_name, language_description, language_code) values (2,'Abkhazian','Abkhazian','ab');
insert into language (language_cd, language_name, language_description, language_code) values (3,'Avestan','Avestan','ae');
insert into language (language_cd, language_name, language_description, language_code) values (4,'Afrikaans','Afrikaans','af');
insert into language (language_cd, language_name, language_description, language_code) values (5,'Akan','Akan','ak');
insert into language (language_cd, language_name, language_description, language_code) values (6,'Amharic','Amharic','am');
insert into language (language_cd, language_name, language_description, language_code) values (7,'Aragonese','Aragonese','an');
insert into language (language_cd, language_name, language_description, language_code) values (8,'Arabic','Arabic','ar');
insert into language (language_cd, language_name, language_description, language_code) values (9,'Assamese','Assamese','as');
insert into language (language_cd, language_name, language_description, language_code) values (10,'Avaric','Avaric','av');
insert into language (language_cd, language_name, language_description, language_code) values (11,'Aymara','Aymara','ay');
insert into language (language_cd, language_name, language_description, language_code) values (12,'Azerbaijani','Azerbaijani','az');
insert into language (language_cd, language_name, language_description, language_code) values (13,'Bashkir','Bashkir','ba');
insert into language (language_cd, language_name, language_description, language_code) values (14,'Belarusian','Belarusian','be');
insert into language (language_cd, language_name, language_description, language_code) values (15,'Bulgarian','Bulgarian','bg');
insert into language (language_cd, language_name, language_description, language_code) values (16,'Bihari','Bihari','bh');
insert into language (language_cd, language_name, language_description, language_code) values (17,'Bislama','Bislama','bi');
insert into language (language_cd, language_name, language_description, language_code) values (18,'Bambara','Bambara','bm');
insert into language (language_cd, language_name, language_description, language_code) values (19,'Bengali','Bengali','bn');
insert into language (language_cd, language_name, language_description, language_code) values (20,'Tibetan','Tibetan','bo');
insert into language (language_cd, language_name, language_description, language_code) values (21,'Breton','Breton','br');
insert into language (language_cd, language_name, language_description, language_code) values (22,'Bosnian','Bosnian','bs');
insert into language (language_cd, language_name, language_description, language_code) values (23,'Catalan;','Catalan;','ca');
insert into language (language_cd, language_name, language_description, language_code) values (24,'Chechen','Chechen','ce');
insert into language (language_cd, language_name, language_description, language_code) values (25,'Chamorro','Chamorro','ch');
insert into language (language_cd, language_name, language_description, language_code) values (26,'Corsican','Corsican','co');
insert into language (language_cd, language_name, language_description, language_code) values (27,'Cree','Cree','cr');
insert into language (language_cd, language_name, language_description, language_code) values (28,'Czech','Czech','cs');
insert into language (language_cd, language_name, language_description, language_code) values (29,'Church','Church','cu');
insert into language (language_cd, language_name, language_description, language_code) values (30,'Chuvash','Chuvash','cv');
insert into language (language_cd, language_name, language_description, language_code) values (31,'Welsh','Welsh','cy');
insert into language (language_cd, language_name, language_description, language_code) values (32,'Danish','Danish','da');
insert into language (language_cd, language_name, language_description, language_code) values (33,'German','German','de');
insert into language (language_cd, language_name, language_description, language_code) values (34,'Divehi','Divehi','dv');
insert into language (language_cd, language_name, language_description, language_code) values (35,'Dzongkha','Dzongkha','dz');
insert into language (language_cd, language_name, language_description, language_code) values (36,'Ewe','Ewe','ee');
insert into language (language_cd, language_name, language_description, language_code) values (37,'Greek,','Greek,','el');
insert into language (language_cd, language_name, language_description, language_code) values (38,'English','English','en');
insert into language (language_cd, language_name, language_description, language_code) values (39,'Esperanto','Esperanto','eo');
insert into language (language_cd, language_name, language_description, language_code) values (40,'Spanish;','Spanish;','es');
insert into language (language_cd, language_name, language_description, language_code) values (41,'Estonian','Estonian','et');
insert into language (language_cd, language_name, language_description, language_code) values (42,'Basque','Basque','eu');
insert into language (language_cd, language_name, language_description, language_code) values (43,'Persian','Persian','fa');
insert into language (language_cd, language_name, language_description, language_code) values (44,'Fulah','Fulah','ff');
insert into language (language_cd, language_name, language_description, language_code) values (45,'Finnish','Finnish','fi');
insert into language (language_cd, language_name, language_description, language_code) values (46,'Fijian','Fijian','fj');
insert into language (language_cd, language_name, language_description, language_code) values (47,'Faroese','Faroese','fo');
insert into language (language_cd, language_name, language_description, language_code) values (48,'French','French','fr');
insert into language (language_cd, language_name, language_description, language_code) values (49,'Frisian','Frisian','fy');
insert into language (language_cd, language_name, language_description, language_code) values (50,'Irish','Irish','ga');
insert into language (language_cd, language_name, language_description, language_code) values (51,'Gaelic;','Gaelic;','gd');
insert into language (language_cd, language_name, language_description, language_code) values (52,'Galician','Galician','gl');
insert into language (language_cd, language_name, language_description, language_code) values (53,'Guarani','Guarani','gn');
insert into language (language_cd, language_name, language_description, language_code) values (54,'Gujarati','Gujarati','gu');
insert into language (language_cd, language_name, language_description, language_code) values (55,'Manx','Manx','gv');
insert into language (language_cd, language_name, language_description, language_code) values (56,'Hausa','Hausa','ha');
insert into language (language_cd, language_name, language_description, language_code) values (57,'Hebrew','Hebrew','he');
insert into language (language_cd, language_name, language_description, language_code) values (58,'Hindi','Hindi','hi');
insert into language (language_cd, language_name, language_description, language_code) values (59,'Hiri','Hiri','ho');
insert into language (language_cd, language_name, language_description, language_code) values (60,'Croatian','Croatian','hr');
insert into language (language_cd, language_name, language_description, language_code) values (61,'Haitian;','Haitian;','ht');
insert into language (language_cd, language_name, language_description, language_code) values (62,'Hungarian','Hungarian','hu');
insert into language (language_cd, language_name, language_description, language_code) values (63,'Armenian','Armenian','hy');
insert into language (language_cd, language_name, language_description, language_code) values (64,'Herero','Herero','hz');
insert into language (language_cd, language_name, language_description, language_code) values (65,'Auxiliary','Auxiliary','ia');
insert into language (language_cd, language_name, language_description, language_code) values (66,'Indonesian','Indonesian','id');
insert into language (language_cd, language_name, language_description, language_code) values (67,'Interlingue','Interlingue','ie');
insert into language (language_cd, language_name, language_description, language_code) values (68,'Igbo','Igbo','ig');
insert into language (language_cd, language_name, language_description, language_code) values (69,'Sichuan','Sichuan','ii');
insert into language (language_cd, language_name, language_description, language_code) values (70,'Inupiaq','Inupiaq','ik');
insert into language (language_cd, language_name, language_description, language_code) values (71,'Ido','Ido','io');
insert into language (language_cd, language_name, language_description, language_code) values (72,'Icelandic','Icelandic','is');
insert into language (language_cd, language_name, language_description, language_code) values (73,'Italian','Italian','it');
insert into language (language_cd, language_name, language_description, language_code) values (74,'Inuktitut','Inuktitut','iu');
insert into language (language_cd, language_name, language_description, language_code) values (75,'Japanese','Japanese','ja');
insert into language (language_cd, language_name, language_description, language_code) values (76,'Javanese','Javanese','jv');
insert into language (language_cd, language_name, language_description, language_code) values (77,'Georgian','Georgian','ka');
insert into language (language_cd, language_name, language_description, language_code) values (78,'Kongo','Kongo','kg');
insert into language (language_cd, language_name, language_description, language_code) values (79,'Gikuyu;','Gikuyu;','ki');
insert into language (language_cd, language_name, language_description, language_code) values (80,'Kuanyama;','Kuanyama;','kj');
insert into language (language_cd, language_name, language_description, language_code) values (81,'Kazakh','Kazakh','kk');
insert into language (language_cd, language_name, language_description, language_code) values (82,'Greenlandic;','Greenlandic;','kl');
insert into language (language_cd, language_name, language_description, language_code) values (83,'Khmer','Khmer','km');
insert into language (language_cd, language_name, language_description, language_code) values (84,'Kannada','Kannada','kn');
insert into language (language_cd, language_name, language_description, language_code) values (85,'Korean','Korean','ko');
insert into language (language_cd, language_name, language_description, language_code) values (86,'Kanuri','Kanuri','kr');
insert into language (language_cd, language_name, language_description, language_code) values (87,'Kashmiri','Kashmiri','ks');
insert into language (language_cd, language_name, language_description, language_code) values (88,'Kurdish','Kurdish','ku');
insert into language (language_cd, language_name, language_description, language_code) values (89,'Komi','Komi','kv');
insert into language (language_cd, language_name, language_description, language_code) values (90,'Cornish','Cornish','kw');
insert into language (language_cd, language_name, language_description, language_code) values (91,'Kirghiz','Kirghiz','ky');
insert into language (language_cd, language_name, language_description, language_code) values (92,'Latin','Latin','la');
insert into language (language_cd, language_name, language_description, language_code) values (93,'Letzeburgesch;','Letzeburgesch;','lb');
insert into language (language_cd, language_name, language_description, language_code) values (94,'Ganda','Ganda','lg');
insert into language (language_cd, language_name, language_description, language_code) values (95,'Limburgan;','Limburgan;','li');
insert into language (language_cd, language_name, language_description, language_code) values (96,'Lingala','Lingala','ln');
insert into language (language_cd, language_name, language_description, language_code) values (97,'Lao','Lao','lo');
insert into language (language_cd, language_name, language_description, language_code) values (98,'Lithuanian','Lithuanian','lt');
insert into language (language_cd, language_name, language_description, language_code) values (99,'Luba-Katanga','Luba-Katanga','lu');
insert into language (language_cd, language_name, language_description, language_code) values (100,'Latvian','Latvian','lv');
insert into language (language_cd, language_name, language_description, language_code) values (101,'Malagasy','Malagasy','mg');
insert into language (language_cd, language_name, language_description, language_code) values (102,'Marshallese','Marshallese','mh');
insert into language (language_cd, language_name, language_description, language_code) values (103,'Maori','Maori','mi');
insert into language (language_cd, language_name, language_description, language_code) values (104,'Macedonian','Macedonian','mk');
insert into language (language_cd, language_name, language_description, language_code) values (105,'Malayalam','Malayalam','ml');
insert into language (language_cd, language_name, language_description, language_code) values (106,'Mongolian','Mongolian','mn');
insert into language (language_cd, language_name, language_description, language_code) values (107,'Moldavian','Moldavian','mo');
insert into language (language_cd, language_name, language_description, language_code) values (108,'Marathi','Marathi','mr');
insert into language (language_cd, language_name, language_description, language_code) values (109,'Malay','Malay','ms');
insert into language (language_cd, language_name, language_description, language_code) values (110,'Maltese','Maltese','mt');
insert into language (language_cd, language_name, language_description, language_code) values (111,'Burmese','Burmese','my');
insert into language (language_cd, language_name, language_description, language_code) values (112,'Nauru','Nauru','na');
insert into language (language_cd, language_name, language_description, language_code) values (113,'Norwegian','Norwegian','nb');
insert into language (language_cd, language_name, language_description, language_code) values (114,'Ndebele,','Ndebele,','nd');
insert into language (language_cd, language_name, language_description, language_code) values (115,'Nepali','Nepali','ne');
insert into language (language_cd, language_name, language_description, language_code) values (116,'Ndonga','Ndonga','ng');
insert into language (language_cd, language_name, language_description, language_code) values (117,'Dutch;','Dutch;','nl');
insert into language (language_cd, language_name, language_description, language_code) values (118,'Norwegian','Norwegian','nn');
insert into language (language_cd, language_name, language_description, language_code) values (119,'Norwegian','Norwegian','no');
insert into language (language_cd, language_name, language_description, language_code) values (120,'Ndebele,','Ndebele,','nr');
insert into language (language_cd, language_name, language_description, language_code) values (121,'Navajo;','Navajo;','nv');
insert into language (language_cd, language_name, language_description, language_code) values (122,'Chewa;','Chewa;','ny');
insert into language (language_cd, language_name, language_description, language_code) values (123,'Occitan','Occitan','oc');
insert into language (language_cd, language_name, language_description, language_code) values (124,'Ojibwa','Ojibwa','oj');
insert into language (language_cd, language_name, language_description, language_code) values (125,'Oromo','Oromo','om');
insert into language (language_cd, language_name, language_description, language_code) values (126,'Oriya','Oriya','or');
insert into language (language_cd, language_name, language_description, language_code) values (127,'Ossetian;','Ossetian;','os');
insert into language (language_cd, language_name, language_description, language_code) values (128,'Panjabi;','Panjabi;','pa');
insert into language (language_cd, language_name, language_description, language_code) values (129,'Pali','Pali','pi');
insert into language (language_cd, language_name, language_description, language_code) values (130,'Polish','Polish','pl');
insert into language (language_cd, language_name, language_description, language_code) values (131,'Pushto','Pushto','ps');
insert into language (language_cd, language_name, language_description, language_code) values (132,'Portuguese','Portuguese','pt');
insert into language (language_cd, language_name, language_description, language_code) values (133,'Quechua','Quechua','qu');
insert into language (language_cd, language_name, language_description, language_code) values (134,'Raeto-Romance','Raeto-Romance','rm');
insert into language (language_cd, language_name, language_description, language_code) values (135,'Rundi','Rundi','rn');
insert into language (language_cd, language_name, language_description, language_code) values (136,'Romanian','Romanian','ro');
insert into language (language_cd, language_name, language_description, language_code) values (137,'Russian','Russian','ru');
insert into language (language_cd, language_name, language_description, language_code) values (138,'Kinyarwanda','Kinyarwanda','rw');
insert into language (language_cd, language_name, language_description, language_code) values (139,'Sanskrit','Sanskrit','sa');
insert into language (language_cd, language_name, language_description, language_code) values (140,'Sardinian','Sardinian','sc');
insert into language (language_cd, language_name, language_description, language_code) values (141,'Sindhi','Sindhi','sd');
insert into language (language_cd, language_name, language_description, language_code) values (142,'Northern','Northern','se');
insert into language (language_cd, language_name, language_description, language_code) values (143,'Sango','Sango','sg');
insert into language (language_cd, language_name, language_description, language_code) values (144,'Sinhala;','Sinhala;','si');
insert into language (language_cd, language_name, language_description, language_code) values (145,'Slovak','Slovak','sk');
insert into language (language_cd, language_name, language_description, language_code) values (146,'Slovenian','Slovenian','sl');
insert into language (language_cd, language_name, language_description, language_code) values (147,'Samoan','Samoan','sm');
insert into language (language_cd, language_name, language_description, language_code) values (148,'Shona','Shona','sn');
insert into language (language_cd, language_name, language_description, language_code) values (149,'Somali','Somali','so');
insert into language (language_cd, language_name, language_description, language_code) values (150,'Albanian','Albanian','sq');
insert into language (language_cd, language_name, language_description, language_code) values (151,'Serbian','Serbian','sr');
insert into language (language_cd, language_name, language_description, language_code) values (152,'Swati','Swati','ss');
insert into language (language_cd, language_name, language_description, language_code) values (153,'Sotho,','Sotho,','st');
insert into language (language_cd, language_name, language_description, language_code) values (154,'Sundanese','Sundanese','su');
insert into language (language_cd, language_name, language_description, language_code) values (155,'Swedish','Swedish','sv');
insert into language (language_cd, language_name, language_description, language_code) values (156,'Swahili','Swahili','sw');
insert into language (language_cd, language_name, language_description, language_code) values (157,'Tamil','Tamil','ta');
insert into language (language_cd, language_name, language_description, language_code) values (158,'Telugu','Telugu','te');
insert into language (language_cd, language_name, language_description, language_code) values (159,'Tajik','Tajik','tg');
insert into language (language_cd, language_name, language_description, language_code) values (160,'Thai','Thai','th');
insert into language (language_cd, language_name, language_description, language_code) values (161,'Tigrinya','Tigrinya','ti');
insert into language (language_cd, language_name, language_description, language_code) values (162,'Turkmen','Turkmen','tk');
insert into language (language_cd, language_name, language_description, language_code) values (163,'Tagalog','Tagalog','tl');
insert into language (language_cd, language_name, language_description, language_code) values (164,'Tswana','Tswana','tn');
insert into language (language_cd, language_name, language_description, language_code) values (165,'Tonga','Tonga','to');
insert into language (language_cd, language_name, language_description, language_code) values (166,'Turkish','Turkish','tr');
insert into language (language_cd, language_name, language_description, language_code) values (167,'Tsonga','Tsonga','ts');
insert into language (language_cd, language_name, language_description, language_code) values (168,'Tatar','Tatar','tt');
insert into language (language_cd, language_name, language_description, language_code) values (169,'Twi','Twi','tw');
insert into language (language_cd, language_name, language_description, language_code) values (170,'Tahitian','Tahitian','ty');
insert into language (language_cd, language_name, language_description, language_code) values (171,'Uighur;','Uighur;','ug');
insert into language (language_cd, language_name, language_description, language_code) values (172,'Ukrainian','Ukrainian','uk');
insert into language (language_cd, language_name, language_description, language_code) values (173,'Urdu','Urdu','ur');
insert into language (language_cd, language_name, language_description, language_code) values (174,'Uzbek','Uzbek','uz');
insert into language (language_cd, language_name, language_description, language_code) values (175,'Venda','Venda','ve');
insert into language (language_cd, language_name, language_description, language_code) values (176,'Vietnamese','Vietnamese','vi');
insert into language (language_cd, language_name, language_description, language_code) values (177,'Volapk','Volapk','vo');
insert into language (language_cd, language_name, language_description, language_code) values (178,'Walloon','Walloon','wa');
insert into language (language_cd, language_name, language_description, language_code) values (179,'Wolof','Wolof','wo');
insert into language (language_cd, language_name, language_description, language_code) values (180,'Xhosa','Xhosa','xh');
insert into language (language_cd, language_name, language_description, language_code) values (181,'Yiddish','Yiddish','yi');
insert into language (language_cd, language_name, language_description, language_code) values (182,'Yoruba','Yoruba','yo');
insert into language (language_cd, language_name, language_description, language_code) values (183,'Zhuang;','Zhuang;','za');
insert into language (language_cd, language_name, language_description, language_code) values (184,'Chinese','Chinese','zh');
insert into language (language_cd, language_name, language_description, language_code) values (185,'Zulu','Zulu','zu');

-- Structure for table name_type (OID = 34508):
DROP TABLE IF EXISTS name_type;
CREATE TABLE name_type (
    name_type_cd integer NOT NULL,
    name_type_name varchar(64) NOT NULL,
    name_type_description varchar(255),
    name_type_code varchar(64) NOT NULL
) WITHOUT OIDS;

insert into name_type (name_type_cd, name_type_name, name_type_description, name_type_code) values (1, 'Alias Name', 'Alias Name', 'A');
insert into name_type (name_type_cd, name_type_name, name_type_description, name_type_code) values (2, 'Legal Name', 'Legal Name', 'L');
insert into name_type (name_type_cd, name_type_name, name_type_description, name_type_code) values (3, 'Display Name', 'Display Name', 'D');
insert into name_type (name_type_cd, name_type_name, name_type_description, name_type_code) values (4, 'Maiden Name', 'Maiden Name', 'M');
insert into name_type (name_type_cd, name_type_name, name_type_description, name_type_code) values (5, 'Adopted Name', 'Adopted Name', 'C');
insert into name_type (name_type_cd, name_type_name, name_type_description, name_type_code) values (6, 'Name at Birth', 'Name at Birth', 'B');
insert into name_type (name_type_cd, name_type_name, name_type_description, name_type_code) values (7, 'Partner Name', 'Name of Partner/Spouse', 'P');
insert into name_type (name_type_cd, name_type_name, name_type_description, name_type_code) values (8, 'Coded Name', 'Coded Pseudo-Name to ensure anonymity', 'S');
insert into name_type (name_type_cd, name_type_name, name_type_description, name_type_code) values (9, 'Tribal Name', 'Tribal/Community Name', 'T');
insert into name_type (name_type_cd, name_type_name, name_type_description, name_type_code) values (10, 'Unspecified', 'Unspecified', 'U');

-- Structure for table nationality (OID = 34513):
DROP TABLE IF EXISTS nationality;
CREATE TABLE nationality (
    nationality_cd integer NOT NULL,
    nationality_name varchar(64) NOT NULL,
    nationality_description varchar(255),
    nationality_code varchar(64) NOT NULL
) WITHOUT OIDS;

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (1,'AFGHANISTAN','AFGHANISTAN','AF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (2,'AFGHANISTAN','AFGHANISTAN','AFG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (3,'AFGHANISTAN','AFGHANISTAN','004');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (4,'ALAND ISLANDS','ALAND ISLANDS','AX');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (5,'ALAND ISLANDS','ALAND ISLANDS','ALA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (6,'ALAND ISLANDS','ALAND ISLANDS','248');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (7,'ALBANIA','ALBANIA','AL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (8,'ALBANIA','ALBANIA','ALB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (9,'ALBANIA','ALBANIA','008');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (10,'ALGERIA','ALGERIA','DZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (11,'ALGERIA','ALGERIA','DZA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (12,'ALGERIA','ALGERIA','012');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (13,'AMERICAN SAMOA','AMERICAN SAMOA','AS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (14,'AMERICAN SAMOA','AMERICAN SAMOA','ASM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (15,'AMERICAN SAMOA','AMERICAN SAMOA','016');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (16,'ANDORRA','ANDORRA','AD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (17,'ANDORRA','ANDORRA','AND');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (18,'ANDORRA','ANDORRA','020');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (19,'ANGOLA','ANGOLA','AO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (20,'ANGOLA','ANGOLA','AGO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (21,'ANGOLA','ANGOLA','024');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (22,'ANGUILLA','ANGUILLA','AI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (23,'ANGUILLA','ANGUILLA','AIA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (24,'ANGUILLA','ANGUILLA','660');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (25,'ANTARCTICA','ANTARCTICA','AQ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (26,'ANTARCTICA','ANTARCTICA','ATA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (27,'ANTARCTICA','ANTARCTICA','010');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (28,'ANTIGUA AND BARBUDA','ANTIGUA AND BARBUDA','AG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (29,'ANTIGUA AND BARBUDA','ANTIGUA AND BARBUDA','ATG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (30,'ANTIGUA AND BARBUDA','ANTIGUA AND BARBUDA','028');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (31,'ARGENTINA','ARGENTINA','AR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (32,'ARGENTINA','ARGENTINA','ARG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (33,'ARGENTINA','ARGENTINA','032');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (34,'ARMENIA','ARMENIA','AM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (35,'ARMENIA','ARMENIA','ARM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (36,'ARMENIA','ARMENIA','051');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (37,'ARUBA','ARUBA','AW');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (38,'ARUBA','ARUBA','ABW');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (39,'ARUBA','ARUBA','533');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (40,'AUSTRALIA','AUSTRALIA','AU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (41,'AUSTRALIA','AUSTRALIA','AUS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (42,'AUSTRALIA','AUSTRALIA','036');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (43,'AUSTRIA','AUSTRIA','AT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (44,'AUSTRIA','AUSTRIA','AUT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (45,'AUSTRIA','AUSTRIA','040');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (46,'AZERBAIJAN','AZERBAIJAN','AZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (47,'AZERBAIJAN','AZERBAIJAN','AZE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (48,'AZERBAIJAN','AZERBAIJAN','031');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (49,'BAHAMAS','BAHAMAS','BS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (50,'BAHAMAS','BAHAMAS','BHS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (51,'BAHAMAS','BAHAMAS','044');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (52,'BAHRAIN','BAHRAIN','BH');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (53,'BAHRAIN','BAHRAIN','BHR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (54,'BAHRAIN','BAHRAIN','048');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (55,'BANGLADESH','BANGLADESH','BD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (56,'BANGLADESH','BANGLADESH','BGD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (57,'BANGLADESH','BANGLADESH','050');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (58,'BARBADOS','BARBADOS','BB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (59,'BARBADOS','BARBADOS','BRB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (60,'BARBADOS','BARBADOS','052');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (61,'BELARUS','BELARUS','BY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (62,'BELARUS','BELARUS','BLR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (63,'BELARUS','BELARUS','112');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (64,'BELGIUM','BELGIUM','BE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (65,'BELGIUM','BELGIUM','BEL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (66,'BELGIUM','BELGIUM','056');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (67,'BELIZE','BELIZE','BZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (68,'BELIZE','BELIZE','BLZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (69,'BELIZE','BELIZE','084');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (70,'BENIN','BENIN','BJ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (71,'BENIN','BENIN','BEN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (72,'BENIN','BENIN','204');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (73,'BERMUDA','BERMUDA','BM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (74,'BERMUDA','BERMUDA','BMU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (75,'BERMUDA','BERMUDA','060');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (76,'BHUTAN','BHUTAN','BT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (77,'BHUTAN','BHUTAN','BTN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (78,'BHUTAN','BHUTAN','064');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (79,'BOLIVIA, PLURINATIONAL STATE OF','BOLIVIA, PLURINATIONAL STATE OF','BO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (80,'BOLIVIA, PLURINATIONAL STATE OF','BOLIVIA, PLURINATIONAL STATE OF','BOL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (81,'BOLIVIA, PLURINATIONAL STATE OF','BOLIVIA, PLURINATIONAL STATE OF','068');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (82,'BOSNIA AND HERZEGOVINA','BOSNIA AND HERZEGOVINA','BA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (83,'BOSNIA AND HERZEGOVINA','BOSNIA AND HERZEGOVINA','BIH');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (84,'BOSNIA AND HERZEGOVINA','BOSNIA AND HERZEGOVINA','070');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (85,'BOTSWANA','BOTSWANA','BW');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (86,'BOTSWANA','BOTSWANA','BWA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (87,'BOTSWANA','BOTSWANA','072');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (88,'BOUVET ISLAND','BOUVET ISLAND','BV');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (89,'BOUVET ISLAND','BOUVET ISLAND','BVT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (90,'BOUVET ISLAND','BOUVET ISLAND','074');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (91,'BRAZIL','BRAZIL','BR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (92,'BRAZIL','BRAZIL','BRA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (93,'BRAZIL','BRAZIL','076');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (94,'BRITISH INDIAN OCEAN TERRITORY','BRITISH INDIAN OCEAN TERRITORY','IO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (95,'BRITISH INDIAN OCEAN TERRITORY','BRITISH INDIAN OCEAN TERRITORY','IOT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (96,'BRITISH INDIAN OCEAN TERRITORY','BRITISH INDIAN OCEAN TERRITORY','086');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (97,'BRUNEI DARUSSALAM','BRUNEI DARUSSALAM','BN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (98,'BRUNEI DARUSSALAM','BRUNEI DARUSSALAM','BRN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (99,'BRUNEI DARUSSALAM','BRUNEI DARUSSALAM','096');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (100,'BULGARIA','BULGARIA','BG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (101,'BULGARIA','BULGARIA','BGR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (102,'BULGARIA','BULGARIA','100');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (103,'BURKINA FASO','BURKINA FASO','BF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (104,'BURKINA FASO','BURKINA FASO','BFA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (105,'BURKINA FASO','BURKINA FASO','854');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (106,'BURUNDI','BURUNDI','BI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (107,'BURUNDI','BURUNDI','BDI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (108,'BURUNDI','BURUNDI','108');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (109,'CAMBODIA','CAMBODIA','KH');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (110,'CAMBODIA','CAMBODIA','KHM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (111,'CAMBODIA','CAMBODIA','116');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (112,'CAMEROON','CAMEROON','CM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (113,'CAMEROON','CAMEROON','CMR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (114,'CAMEROON','CAMEROON','120');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (115,'CANADA','CANADA','CA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (116,'CANADA','CANADA','CAN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (117,'CANADA','CANADA','124');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (118,'CAPE VERDE','CAPE VERDE','CV');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (119,'CAPE VERDE','CAPE VERDE','CPV');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (120,'CAPE VERDE','CAPE VERDE','132');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (121,'CAYMAN ISLANDS','CAYMAN ISLANDS','KY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (122,'CAYMAN ISLANDS','CAYMAN ISLANDS','CYM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (123,'CAYMAN ISLANDS','CAYMAN ISLANDS','136');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (124,'CENTRAL AFRICAN REPUBLIC','CENTRAL AFRICAN REPUBLIC','CF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (125,'CENTRAL AFRICAN REPUBLIC','CENTRAL AFRICAN REPUBLIC','CAF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (126,'CENTRAL AFRICAN REPUBLIC','CENTRAL AFRICAN REPUBLIC','140');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (127,'CHAD','CHAD','TD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (128,'CHAD','CHAD','TCD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (129,'CHAD','CHAD','148');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (130,'CHILE','CHILE','CL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (131,'CHILE','CHILE','CHL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (132,'CHILE','CHILE','152');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (133,'CHINA','CHINA','CN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (134,'CHINA','CHINA','CHN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (135,'CHINA','CHINA','156');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (136,'CHRISTMAS ISLAND','CHRISTMAS ISLAND','CX');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (137,'CHRISTMAS ISLAND','CHRISTMAS ISLAND','CXR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (138,'CHRISTMAS ISLAND','CHRISTMAS ISLAND','162');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (139,'COCOS (KEELING) ISLANDS','COCOS (KEELING) ISLANDS','CC');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (140,'COCOS (KEELING) ISLANDS','COCOS (KEELING) ISLANDS','CCK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (141,'COCOS (KEELING) ISLANDS','COCOS (KEELING) ISLANDS','166');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (142,'COLOMBIA','COLOMBIA','CO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (143,'COLOMBIA','COLOMBIA','COL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (144,'COLOMBIA','COLOMBIA','170');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (145,'COMOROS','COMOROS','KM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (146,'COMOROS','COMOROS','COM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (147,'COMOROS','COMOROS','174');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (148,'CONGO','CONGO','CG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (149,'CONGO','CONGO','COG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (150,'CONGO','CONGO','178');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (151,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (152,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CONGO, THE DEMOCRATIC REPUBLIC OF THE','COD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (153,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CONGO, THE DEMOCRATIC REPUBLIC OF THE','180');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (154,'COOK ISLANDS','COOK ISLANDS','CK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (155,'COOK ISLANDS','COOK ISLANDS','COK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (156,'COOK ISLANDS','COOK ISLANDS','184');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (157,'COSTA RICA','COSTA RICA','CR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (158,'COSTA RICA','COSTA RICA','CRI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (159,'COSTA RICA','COSTA RICA','188');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (160,'COTE D''IVOIRE','COTE D''IVOIRE','CI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (161,'COTE D''IVOIRE','COTE D''IVOIRE','CIV');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (162,'COTE D''IVOIRE','COTE D''IVOIRE','384');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (163,'CROATIA','CROATIA','HR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (164,'CROATIA','CROATIA','HRV');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (165,'CROATIA','CROATIA','191');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (166,'CUBA','CUBA','CU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (167,'CUBA','CUBA','CUB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (168,'CUBA','CUBA','192');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (169,'CYPRUS','CYPRUS','CY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (170,'CYPRUS','CYPRUS','CYP');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (171,'CYPRUS','CYPRUS','196');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (172,'CZECH REPUBLIC','CZECH REPUBLIC','CZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (173,'CZECH REPUBLIC','CZECH REPUBLIC','CZE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (174,'CZECH REPUBLIC','CZECH REPUBLIC','203');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (175,'DENMARK','DENMARK','DK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (176,'DENMARK','DENMARK','DNK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (177,'DENMARK','DENMARK','208');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (178,'DJIBOUTI','DJIBOUTI','DJ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (179,'DJIBOUTI','DJIBOUTI','DJI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (180,'DJIBOUTI','DJIBOUTI','262');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (181,'DOMINICA','DOMINICA','DM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (182,'DOMINICA','DOMINICA','DMA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (183,'DOMINICA','DOMINICA','212');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (184,'DOMINICAN REPUBLIC','DOMINICAN REPUBLIC','DO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (185,'DOMINICAN REPUBLIC','DOMINICAN REPUBLIC','DOM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (186,'DOMINICAN REPUBLIC','DOMINICAN REPUBLIC','214');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (187,'ECUADOR','ECUADOR','EC');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (188,'ECUADOR','ECUADOR','ECU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (189,'ECUADOR','ECUADOR','218');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (190,'EGYPT','EGYPT','EG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (191,'EGYPT','EGYPT','EGY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (192,'EGYPT','EGYPT','818');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (193,'EL SALVADOR','EL SALVADOR','SV');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (194,'EL SALVADOR','EL SALVADOR','SLV');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (195,'EL SALVADOR','EL SALVADOR','222');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (196,'EQUATORIAL GUINEA','EQUATORIAL GUINEA','GQ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (197,'EQUATORIAL GUINEA','EQUATORIAL GUINEA','GNQ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (198,'EQUATORIAL GUINEA','EQUATORIAL GUINEA','226');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (199,'ERITREA','ERITREA','ER');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (200,'ERITREA','ERITREA','ERI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (201,'ERITREA','ERITREA','232');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (202,'ESTONIA','ESTONIA','EE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (203,'ESTONIA','ESTONIA','EST');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (204,'ESTONIA','ESTONIA','233');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (205,'ETHIOPIA','ETHIOPIA','ET');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (206,'ETHIOPIA','ETHIOPIA','ETH');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (207,'ETHIOPIA','ETHIOPIA','231');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (208,'FALKLAND ISLANDS (MALVINAS)','FALKLAND ISLANDS (MALVINAS)','FK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (209,'FALKLAND ISLANDS (MALVINAS)','FALKLAND ISLANDS (MALVINAS)','FLK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (210,'FALKLAND ISLANDS (MALVINAS)','FALKLAND ISLANDS (MALVINAS)','238');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (211,'FAROE ISLANDS','FAROE ISLANDS','FO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (212,'FAROE ISLANDS','FAROE ISLANDS','FRO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (213,'FAROE ISLANDS','FAROE ISLANDS','234');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (214,'FIJI','FIJI','FJ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (215,'FIJI','FIJI','FJI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (216,'FIJI','FIJI','242');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (217,'FINLAND','FINLAND','FI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (218,'FINLAND','FINLAND','FIN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (219,'FINLAND','FINLAND','246');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (220,'FRANCE','FRANCE','FR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (221,'FRANCE','FRANCE','FRA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (222,'FRANCE','FRANCE','250');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (223,'FRENCH GUIANA','FRENCH GUIANA','GF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (224,'FRENCH GUIANA','FRENCH GUIANA','GUF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (225,'FRENCH GUIANA','FRENCH GUIANA','254');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (226,'FRENCH POLYNESIA','FRENCH POLYNESIA','PF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (227,'FRENCH POLYNESIA','FRENCH POLYNESIA','PYF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (228,'FRENCH POLYNESIA','FRENCH POLYNESIA','258');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (229,'FRENCH SOUTHERN TERRITORIES','FRENCH SOUTHERN TERRITORIES','TF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (230,'FRENCH SOUTHERN TERRITORIES','FRENCH SOUTHERN TERRITORIES','ATF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (231,'FRENCH SOUTHERN TERRITORIES','FRENCH SOUTHERN TERRITORIES','260');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (232,'GABON','GABON','GA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (233,'GABON','GABON','GAB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (234,'GABON','GABON','266');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (235,'GAMBIA','GAMBIA','GM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (236,'GAMBIA','GAMBIA','GMB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (237,'GAMBIA','GAMBIA','270');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (238,'GEORGIA','GEORGIA','GE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (239,'GEORGIA','GEORGIA','GEO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (240,'GEORGIA','GEORGIA','268');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (241,'GERMANY','GERMANY','DE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (242,'GERMANY','GERMANY','DEU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (243,'GERMANY','GERMANY','276');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (244,'GHANA','GHANA','GH');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (245,'GHANA','GHANA','GHA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (246,'GHANA','GHANA','288');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (247,'GIBRALTAR','GIBRALTAR','GI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (248,'GIBRALTAR','GIBRALTAR','GIB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (249,'GIBRALTAR','GIBRALTAR','292');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (250,'GREECE','GREECE','GR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (251,'GREECE','GREECE','GRC');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (252,'GREECE','GREECE','300');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (253,'GREENLAND','GREENLAND','GL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (254,'GREENLAND','GREENLAND','GRL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (255,'GREENLAND','GREENLAND','304');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (256,'GRENADA','GRENADA','GD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (257,'GRENADA','GRENADA','GRD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (258,'GRENADA','GRENADA','308');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (259,'GUADELOUPE','GUADELOUPE','GP');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (260,'GUADELOUPE','GUADELOUPE','GLP');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (261,'GUADELOUPE','GUADELOUPE','312');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (262,'GUAM','GUAM','GU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (263,'GUAM','GUAM','GUM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (264,'GUAM','GUAM','316');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (265,'GUATEMALA','GUATEMALA','GT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (266,'GUATEMALA','GUATEMALA','GTM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (267,'GUATEMALA','GUATEMALA','320');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (268,'GUERNSEY','GUERNSEY','GG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (269,'GUERNSEY','GUERNSEY','GGY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (270,'GUERNSEY','GUERNSEY','831');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (271,'GUINEA','GUINEA','GN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (272,'GUINEA','GUINEA','GIN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (273,'GUINEA','GUINEA','324');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (274,'GUINEA-BISSAU','GUINEA-BISSAU','GW');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (275,'GUINEA-BISSAU','GUINEA-BISSAU','GNB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (276,'GUINEA-BISSAU','GUINEA-BISSAU','624');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (277,'GUYANA','GUYANA','GY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (278,'GUYANA','GUYANA','GUY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (279,'GUYANA','GUYANA','328');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (280,'HAITI','HAITI','HT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (281,'HAITI','HAITI','HTI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (282,'HAITI','HAITI','332');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (283,'HEARD ISLAND AND MCDONALD ISLANDS','HEARD ISLAND AND MCDONALD ISLANDS','HM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (284,'HEARD ISLAND AND MCDONALD ISLANDS','HEARD ISLAND AND MCDONALD ISLANDS','HMD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (285,'HEARD ISLAND AND MCDONALD ISLANDS','HEARD ISLAND AND MCDONALD ISLANDS','334');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (286,'HOLY SEE (VATICAN CITY STATE)','HOLY SEE (VATICAN CITY STATE)','VA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (287,'HOLY SEE (VATICAN CITY STATE)','HOLY SEE (VATICAN CITY STATE)','VAT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (288,'HOLY SEE (VATICAN CITY STATE)','HOLY SEE (VATICAN CITY STATE)','336');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (289,'HONDURAS','HONDURAS','HN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (290,'HONDURAS','HONDURAS','HND');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (291,'HONDURAS','HONDURAS','340');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (292,'HONG KONG','HONG KONG','HK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (293,'HONG KONG','HONG KONG','HKG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (294,'HONG KONG','HONG KONG','344');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (295,'HUNGARY','HUNGARY','HU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (296,'HUNGARY','HUNGARY','HUN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (297,'HUNGARY','HUNGARY','348');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (298,'ICELAND','ICELAND','IS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (299,'ICELAND','ICELAND','ISL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (300,'ICELAND','ICELAND','352');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (301,'INDIA','INDIA','IN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (302,'INDIA','INDIA','IND');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (303,'INDIA','INDIA','356');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (304,'INDONESIA','INDONESIA','ID');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (305,'INDONESIA','INDONESIA','IDN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (306,'INDONESIA','INDONESIA','360');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (307,'IRAN (ISLAMIC REPUBLIC OF)','IRAN (ISLAMIC REPUBLIC OF)','IR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (308,'IRAN (ISLAMIC REPUBLIC OF)','IRAN (ISLAMIC REPUBLIC OF)','IRN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (309,'IRAN (ISLAMIC REPUBLIC OF)','IRAN (ISLAMIC REPUBLIC OF)','364');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (310,'IRAQ','IRAQ','IQ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (311,'IRAQ','IRAQ','IRQ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (312,'IRAQ','IRAQ','368');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (313,'IRELAND','IRELAND','IE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (314,'IRELAND','IRELAND','IRL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (315,'IRELAND','IRELAND','372');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (316,'ISLE OF MAN','ISLE OF MAN','IM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (317,'ISLE OF MAN','ISLE OF MAN','IMM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (318,'ISLE OF MAN','ISLE OF MAN','833');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (319,'ISRAEL','ISRAEL','IL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (320,'ISRAEL','ISRAEL','ISR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (321,'ISRAEL','ISRAEL','376');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (322,'ITALY','ITALY','IT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (323,'ITALY','ITALY','ITA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (324,'ITALY','ITALY','380');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (325,'JAMAICA','JAMAICA','JM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (326,'JAMAICA','JAMAICA','JAM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (327,'JAMAICA','JAMAICA','388');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (328,'JAPAN','JAPAN','JP');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (329,'JAPAN','JAPAN','JPN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (330,'JAPAN','JAPAN','392');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (331,'JERSEY','JERSEY','JE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (332,'JERSEY','JERSEY','JEY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (333,'JERSEY','JERSEY','832');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (334,'JORDAN','JORDAN','JO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (335,'JORDAN','JORDAN','JOR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (336,'JORDAN','JORDAN','400');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (337,'KAZAKHSTAN','KAZAKHSTAN','KZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (338,'KAZAKHSTAN','KAZAKHSTAN','KAZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (339,'KAZAKHSTAN','KAZAKHSTAN','398');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (340,'KENYA','KENYA','KE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (341,'KENYA','KENYA','KEN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (342,'KENYA','KENYA','404');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (343,'KIRIBATI','KIRIBATI','KI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (344,'KIRIBATI','KIRIBATI','KIR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (345,'KIRIBATI','KIRIBATI','296');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (346,'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF','KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF','KP');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (347,'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF','KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF','PRK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (348,'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF','KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF','408');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (349,'KOREA, REPUBLIC OF','KOREA, REPUBLIC OF','KR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (350,'KOREA, REPUBLIC OF','KOREA, REPUBLIC OF','KOR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (351,'KOREA, REPUBLIC OF','KOREA, REPUBLIC OF','410');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (352,'KUWAIT','KUWAIT','KW');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (353,'KUWAIT','KUWAIT','KWT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (354,'KUWAIT','KUWAIT','414');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (355,'KYRGYZSTAN','KYRGYZSTAN','KG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (356,'KYRGYZSTAN','KYRGYZSTAN','KGZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (357,'KYRGYZSTAN','KYRGYZSTAN','417');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (358,'LAO PEOPLE''S DEMOCRATIC REPUBLIC','LAO PEOPLE''S DEMOCRATIC REPUBLIC','LA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (359,'LAO PEOPLE''S DEMOCRATIC REPUBLIC','LAO PEOPLE''S DEMOCRATIC REPUBLIC','LAO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (360,'LAO PEOPLE''S DEMOCRATIC REPUBLIC','LAO PEOPLE''S DEMOCRATIC REPUBLIC','418');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (361,'LATVIA','LATVIA','LV');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (362,'LATVIA','LATVIA','LVA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (363,'LATVIA','LATVIA','428');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (364,'LEBANON','LEBANON','LB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (365,'LEBANON','LEBANON','LBN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (366,'LEBANON','LEBANON','422');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (367,'LESOTHO','LESOTHO','LS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (368,'LESOTHO','LESOTHO','LSO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (369,'LESOTHO','LESOTHO','426');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (370,'LIBERIA','LIBERIA','LR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (371,'LIBERIA','LIBERIA','LBR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (372,'LIBERIA','LIBERIA','430');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (373,'LIBYAN ARAB JAMAHIRIYA','LIBYAN ARAB JAMAHIRIYA','LY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (374,'LIBYAN ARAB JAMAHIRIYA','LIBYAN ARAB JAMAHIRIYA','LBY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (375,'LIBYAN ARAB JAMAHIRIYA','LIBYAN ARAB JAMAHIRIYA','434');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (376,'LIECHTENSTEIN','LIECHTENSTEIN','LI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (377,'LIECHTENSTEIN','LIECHTENSTEIN','LIE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (378,'LIECHTENSTEIN','LIECHTENSTEIN','438');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (379,'LITHUANIA','LITHUANIA','LT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (380,'LITHUANIA','LITHUANIA','LTU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (381,'LITHUANIA','LITHUANIA','440');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (382,'LUXEMBOURG','LUXEMBOURG','LU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (383,'LUXEMBOURG','LUXEMBOURG','LUX');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (384,'LUXEMBOURG','LUXEMBOURG','442');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (385,'MACAO','MACAO','MO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (386,'MACAO','MACAO','MAC');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (387,'MACAO','MACAO','446');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (388,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (389,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MKD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (390,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','807');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (391,'MADAGASCAR','MADAGASCAR','MG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (392,'MADAGASCAR','MADAGASCAR','MDG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (393,'MADAGASCAR','MADAGASCAR','450');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (394,'MALAWI','MALAWI','MW');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (395,'MALAWI','MALAWI','MWI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (396,'MALAWI','MALAWI','454');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (397,'MALAYSIA','MALAYSIA','MY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (398,'MALAYSIA','MALAYSIA','MYS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (399,'MALAYSIA','MALAYSIA','458');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (400,'MALDIVES','MALDIVES','MV');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (401,'MALDIVES','MALDIVES','MDV');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (402,'MALDIVES','MALDIVES','462');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (403,'MALI','MALI','ML');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (404,'MALI','MALI','MLI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (405,'MALI','MALI','466');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (406,'MALTA','MALTA','MT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (407,'MALTA','MALTA','MLT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (408,'MALTA','MALTA','470');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (409,'MARSHALL ISLANDS','MARSHALL ISLANDS','MH');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (410,'MARSHALL ISLANDS','MARSHALL ISLANDS','MHL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (411,'MARSHALL ISLANDS','MARSHALL ISLANDS','584');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (412,'MARTINIQUE','MARTINIQUE','MQ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (413,'MARTINIQUE','MARTINIQUE','MTQ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (414,'MARTINIQUE','MARTINIQUE','474');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (415,'MAURITANIA','MAURITANIA','MR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (416,'MAURITANIA','MAURITANIA','MRT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (417,'MAURITANIA','MAURITANIA','478');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (418,'MAURITIUS','MAURITIUS','MU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (419,'MAURITIUS','MAURITIUS','MUS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (420,'MAURITIUS','MAURITIUS','480');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (421,'MAYOTTE','MAYOTTE','YT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (422,'MAYOTTE','MAYOTTE','MYT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (423,'MAYOTTE','MAYOTTE','175');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (424,'MEXICO','MEXICO','MX');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (425,'MEXICO','MEXICO','MEX');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (426,'MEXICO','MEXICO','484');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (427,'MICRONESIA, FEDERATED STATES OF','MICRONESIA, FEDERATED STATES OF','FM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (428,'MICRONESIA, FEDERATED STATES OF','MICRONESIA, FEDERATED STATES OF','FSM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (429,'MICRONESIA, FEDERATED STATES OF','MICRONESIA, FEDERATED STATES OF','583');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (430,'MOLDOVA, REPUBLIC OF','MOLDOVA, REPUBLIC OF','MD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (431,'MOLDOVA, REPUBLIC OF','MOLDOVA, REPUBLIC OF','MDA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (432,'MOLDOVA, REPUBLIC OF','MOLDOVA, REPUBLIC OF','498');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (433,'MONACO','MONACO','MC');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (434,'MONACO','MONACO','MCO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (435,'MONACO','MONACO','492');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (436,'MONGOLIA','MONGOLIA','MN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (437,'MONGOLIA','MONGOLIA','MNG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (438,'MONGOLIA','MONGOLIA','496');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (439,'MONTENEGRO','MONTENEGRO','ME');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (440,'MONTENEGRO','MONTENEGRO','MNE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (441,'MONTENEGRO','MONTENEGRO','499');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (442,'MONTSERRAT','MONTSERRAT','MS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (443,'MONTSERRAT','MONTSERRAT','MSR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (444,'MONTSERRAT','MONTSERRAT','500');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (445,'MOROCCO','MOROCCO','MA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (446,'MOROCCO','MOROCCO','MAR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (447,'MOROCCO','MOROCCO','504');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (448,'MOZAMBIQUE','MOZAMBIQUE','MZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (449,'MOZAMBIQUE','MOZAMBIQUE','MOZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (450,'MOZAMBIQUE','MOZAMBIQUE','508');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (451,'MYANMAR','MYANMAR','MM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (452,'MYANMAR','MYANMAR','MMR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (453,'MYANMAR','MYANMAR','104');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (454,'NAMIBIA','NAMIBIA','NA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (455,'NAMIBIA','NAMIBIA','NAM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (456,'NAMIBIA','NAMIBIA','516');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (457,'NAURU','NAURU','NR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (458,'NAURU','NAURU','NRU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (459,'NAURU','NAURU','520');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (460,'NEPAL','NEPAL','NP');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (461,'NEPAL','NEPAL','NPL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (462,'NEPAL','NEPAL','524');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (463,'NETHERLANDS','NETHERLANDS','NL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (464,'NETHERLANDS','NETHERLANDS','NLD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (465,'NETHERLANDS','NETHERLANDS','528');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (466,'NETHERLANDS ANTILLES','NETHERLANDS ANTILLES','AN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (467,'NETHERLANDS ANTILLES','NETHERLANDS ANTILLES','ANT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (468,'NETHERLANDS ANTILLES','NETHERLANDS ANTILLES','530');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (469,'NEW CALEDONIA','NEW CALEDONIA','NC');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (470,'NEW CALEDONIA','NEW CALEDONIA','NCL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (471,'NEW CALEDONIA','NEW CALEDONIA','540');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (472,'NEW ZEALAND','NEW ZEALAND','NZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (473,'NEW ZEALAND','NEW ZEALAND','NZL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (474,'NEW ZEALAND','NEW ZEALAND','554');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (475,'NICARAGUA','NICARAGUA','NI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (476,'NICARAGUA','NICARAGUA','NIC');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (477,'NICARAGUA','NICARAGUA','558');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (478,'NIGER','NIGER','NE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (479,'NIGER','NIGER','NER');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (480,'NIGER','NIGER','562');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (481,'NIGERIA','NIGERIA','NG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (482,'NIGERIA','NIGERIA','NGA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (483,'NIGERIA','NIGERIA','566');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (484,'NIUE','NIUE','NU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (485,'NIUE','NIUE','NIU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (486,'NIUE','NIUE','570');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (487,'NORFOLK ISLAND','NORFOLK ISLAND','NF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (488,'NORFOLK ISLAND','NORFOLK ISLAND','NFK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (489,'NORFOLK ISLAND','NORFOLK ISLAND','574');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (490,'NORTHERN MARIANA ISLANDS','NORTHERN MARIANA ISLANDS','MP');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (491,'NORTHERN MARIANA ISLANDS','NORTHERN MARIANA ISLANDS','MNP');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (492,'NORTHERN MARIANA ISLANDS','NORTHERN MARIANA ISLANDS','580');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (493,'NORWAY','NORWAY','NO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (494,'NORWAY','NORWAY','NOR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (495,'NORWAY','NORWAY','578');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (496,'OMAN','OMAN','OM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (497,'OMAN','OMAN','OMN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (498,'OMAN','OMAN','512');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (499,'PAKISTAN','PAKISTAN','PK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (500,'PAKISTAN','PAKISTAN','PAK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (501,'PAKISTAN','PAKISTAN','586');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (502,'PALAU','PALAU','PW');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (503,'PALAU','PALAU','PLW');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (504,'PALAU','PALAU','585');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (505,'PALESTINIAN TERRITORY, OCCUPIED','PALESTINIAN TERRITORY, OCCUPIED','PS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (506,'PALESTINIAN TERRITORY, OCCUPIED','PALESTINIAN TERRITORY, OCCUPIED','PSE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (507,'PALESTINIAN TERRITORY, OCCUPIED','PALESTINIAN TERRITORY, OCCUPIED','275');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (508,'PANAMA','PANAMA','PA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (509,'PANAMA','PANAMA','PAN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (510,'PANAMA','PANAMA','591');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (511,'PAPUA NEW GUINEA','PAPUA NEW GUINEA','PG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (512,'PAPUA NEW GUINEA','PAPUA NEW GUINEA','PNG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (513,'PAPUA NEW GUINEA','PAPUA NEW GUINEA','598');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (514,'PARAGUAY','PARAGUAY','PY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (515,'PARAGUAY','PARAGUAY','PRY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (516,'PARAGUAY','PARAGUAY','600');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (517,'PERU','PERU','PE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (518,'PERU','PERU','PER');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (519,'PERU','PERU','604');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (520,'PHILIPPINES','PHILIPPINES','PH');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (521,'PHILIPPINES','PHILIPPINES','PHL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (522,'PHILIPPINES','PHILIPPINES','608');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (523,'PITCAIRN','PITCAIRN','PN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (524,'PITCAIRN','PITCAIRN','PCN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (525,'PITCAIRN','PITCAIRN','612');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (526,'POLAND','POLAND','PL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (527,'POLAND','POLAND','POL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (528,'POLAND','POLAND','616');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (529,'PORTUGAL','PORTUGAL','PT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (530,'PORTUGAL','PORTUGAL','PRT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (531,'PORTUGAL','PORTUGAL','620');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (532,'PUERTO RICO','PUERTO RICO','PR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (533,'PUERTO RICO','PUERTO RICO','PRI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (534,'PUERTO RICO','PUERTO RICO','630');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (535,'QATAR','QATAR','QA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (536,'QATAR','QATAR','QAT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (537,'QATAR','QATAR','634');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (538,'REUNION','REUNION','RE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (539,'REUNION','REUNION','REU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (540,'REUNION','REUNION','638');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (541,'ROMANIA','ROMANIA','RO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (542,'ROMANIA','ROMANIA','ROU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (543,'ROMANIA','ROMANIA','642');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (544,'RUSSIAN FEDERATION','RUSSIAN FEDERATION','RU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (545,'RUSSIAN FEDERATION','RUSSIAN FEDERATION','RUS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (546,'RUSSIAN FEDERATION','RUSSIAN FEDERATION','643');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (547,'RWANDA','RWANDA','RW');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (548,'RWANDA','RWANDA','RWA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (549,'RWANDA','RWANDA','646');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (550,'SAINT BARTHELEMY','SAINT BARTHELEMY','BL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (551,'SAINT BARTHELEMY','SAINT BARTHELEMY','BLM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (552,'SAINT BARTHELEMY','SAINT BARTHELEMY','652');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (553,'SAINT HELENA','SAINT HELENA','SH');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (554,'SAINT HELENA','SAINT HELENA','SHN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (555,'SAINT HELENA','SAINT HELENA','654');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (556,'SAINT KITTS AND NEVIS','SAINT KITTS AND NEVIS','KN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (557,'SAINT KITTS AND NEVIS','SAINT KITTS AND NEVIS','KNA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (558,'SAINT KITTS AND NEVIS','SAINT KITTS AND NEVIS','659');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (559,'SAINT LUCIA','SAINT LUCIA','LC');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (560,'SAINT LUCIA','SAINT LUCIA','LCA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (561,'SAINT LUCIA','SAINT LUCIA','662');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (562,'SAINT MARTIN (FRENCH PART)','SAINT MARTIN (FRENCH PART)','MT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (563,'SAINT MARTIN (FRENCH PART)','SAINT MARTIN (FRENCH PART)','MAF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (564,'SAINT MARTIN (FRENCH PART)','SAINT MARTIN (FRENCH PART)','663');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (565,'SAINT PIERRE AND MIQUELON','SAINT PIERRE AND MIQUELON','PM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (566,'SAINT PIERRE AND MIQUELON','SAINT PIERRE AND MIQUELON','SPM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (567,'SAINT PIERRE AND MIQUELON','SAINT PIERRE AND MIQUELON','666');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (568,'SAINT VINCENT AND THE GRENADINES','SAINT VINCENT AND THE GRENADINES','VC');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (569,'SAINT VINCENT AND THE GRENADINES','SAINT VINCENT AND THE GRENADINES','VCT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (570,'SAINT VINCENT AND THE GRENADINES','SAINT VINCENT AND THE GRENADINES','670');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (571,'SAMOA','SAMOA','WS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (572,'SAMOA','SAMOA','WSM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (573,'SAMOA','SAMOA','882');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (574,'SAN MARINO','SAN MARINO','SM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (575,'SAN MARINO','SAN MARINO','SMR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (576,'SAN MARINO','SAN MARINO','674');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (577,'SAO TOME AND PRINCIPE','SAO TOME AND PRINCIPE','ST');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (578,'SAO TOME AND PRINCIPE','SAO TOME AND PRINCIPE','STP');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (579,'SAO TOME AND PRINCIPE','SAO TOME AND PRINCIPE','678');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (580,'SAUDI ARABIA','SAUDI ARABIA','SA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (581,'SAUDI ARABIA','SAUDI ARABIA','SAU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (582,'SAUDI ARABIA','SAUDI ARABIA','682');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (583,'SENEGAL','SENEGAL','SN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (584,'SENEGAL','SENEGAL','SEN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (585,'SENEGAL','SENEGAL','686');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (586,'SERBIA','SERBIA','RS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (587,'SERBIA','SERBIA','SRB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (588,'SERBIA','SERBIA','688');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (589,'SEYCHELLES','SEYCHELLES','SC');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (590,'SEYCHELLES','SEYCHELLES','SYC');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (591,'SEYCHELLES','SEYCHELLES','690');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (592,'SIERRA LEONE','SIERRA LEONE','SL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (593,'SIERRA LEONE','SIERRA LEONE','SLE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (594,'SIERRA LEONE','SIERRA LEONE','694');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (595,'SINGAPORE','SINGAPORE','SG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (596,'SINGAPORE','SINGAPORE','SGP');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (597,'SINGAPORE','SINGAPORE','702');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (598,'SLOVAKIA','SLOVAKIA','SK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (599,'SLOVAKIA','SLOVAKIA','SVK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (600,'SLOVAKIA','SLOVAKIA','703');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (601,'SLOVENIA','SLOVENIA','SI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (602,'SLOVENIA','SLOVENIA','SVN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (603,'SLOVENIA','SLOVENIA','705');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (604,'SOLOMON ISLANDS','SOLOMON ISLANDS','SB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (605,'SOLOMON ISLANDS','SOLOMON ISLANDS','SLB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (606,'SOLOMON ISLANDS','SOLOMON ISLANDS','090');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (607,'SOMALIA','SOMALIA','SO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (608,'SOMALIA','SOMALIA','SOM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (609,'SOMALIA','SOMALIA','706');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (610,'SOUTH AFRICA','SOUTH AFRICA','ZA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (611,'SOUTH AFRICA','SOUTH AFRICA','ZAF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (612,'SOUTH AFRICA','SOUTH AFRICA','710');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (613,'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','GS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (614,'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','SGS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (615,'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','239');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (616,'SPAIN','SPAIN','ES');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (617,'SPAIN','SPAIN','ESP');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (618,'SPAIN','SPAIN','724');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (619,'SRI LANKA','SRI LANKA','LK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (620,'SRI LANKA','SRI LANKA','LKA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (621,'SRI LANKA','SRI LANKA','144');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (622,'SUDAN','SUDAN','SD');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (623,'SUDAN','SUDAN','SDN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (624,'SUDAN','SUDAN','736');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (625,'SURINAME','SURINAME','SR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (626,'SURINAME','SURINAME','SUR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (627,'SURINAME','SURINAME','740');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (628,'SVALBARD AND JAN MAYEN','SVALBARD AND JAN MAYEN','SJ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (629,'SVALBARD AND JAN MAYEN','SVALBARD AND JAN MAYEN','SJM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (630,'SVALBARD AND JAN MAYEN','SVALBARD AND JAN MAYEN','744');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (631,'SWAZILAND','SWAZILAND','SZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (632,'SWAZILAND','SWAZILAND','SWZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (633,'SWAZILAND','SWAZILAND','748');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (634,'SWEDEN','SWEDEN','SE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (635,'SWEDEN','SWEDEN','SWE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (636,'SWEDEN','SWEDEN','752');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (637,'SWITZERLAND','SWITZERLAND','CH');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (638,'SWITZERLAND','SWITZERLAND','CHE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (639,'SWITZERLAND','SWITZERLAND','756');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (640,'SYRIAN ARAB REPUBLIC','SYRIAN ARAB REPUBLIC','SY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (641,'SYRIAN ARAB REPUBLIC','SYRIAN ARAB REPUBLIC','SYR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (642,'SYRIAN ARAB REPUBLIC','SYRIAN ARAB REPUBLIC','760');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (643,'TAIWAN, PROVINCE OF CHINA','TAIWAN, PROVINCE OF CHINA','TW');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (644,'TAIWAN, PROVINCE OF CHINA','TAIWAN, PROVINCE OF CHINA','TWN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (645,'TAIWAN, PROVINCE OF CHINA','TAIWAN, PROVINCE OF CHINA','158');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (646,'TAJIKISTAN','TAJIKISTAN','TJ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (647,'TAJIKISTAN','TAJIKISTAN','TJK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (648,'TAJIKISTAN','TAJIKISTAN','762');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (649,'TANZANIA, UNITED REPUBLIC OF','TANZANIA, UNITED REPUBLIC OF','TZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (650,'TANZANIA, UNITED REPUBLIC OF','TANZANIA, UNITED REPUBLIC OF','TZA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (651,'TANZANIA, UNITED REPUBLIC OF','TANZANIA, UNITED REPUBLIC OF','834');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (652,'THAILAND','THAILAND','TH');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (653,'THAILAND','THAILAND','THA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (654,'THAILAND','THAILAND','764');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (655,'TIMOR-LESTE','TIMOR-LESTE','TL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (656,'TIMOR-LESTE','TIMOR-LESTE','TLS');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (657,'TIMOR-LESTE','TIMOR-LESTE','626');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (658,'TOGO','TOGO','TG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (659,'TOGO','TOGO','TGO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (660,'TOGO','TOGO','768');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (661,'TOKELAU','TOKELAU','TK');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (662,'TOKELAU','TOKELAU','TKL');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (663,'TOKELAU','TOKELAU','772');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (664,'TONGA','TONGA','TO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (665,'TONGA','TONGA','TON');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (666,'TONGA','TONGA','776');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (667,'TRINIDAD AND TOBAGO','TRINIDAD AND TOBAGO','TT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (668,'TRINIDAD AND TOBAGO','TRINIDAD AND TOBAGO','TTO');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (669,'TRINIDAD AND TOBAGO','TRINIDAD AND TOBAGO','780');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (670,'TUNISIA','TUNISIA','TN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (671,'TUNISIA','TUNISIA','TUN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (672,'TUNISIA','TUNISIA','788');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (673,'TURKEY','TURKEY','TR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (674,'TURKEY','TURKEY','TUR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (675,'TURKEY','TURKEY','792');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (676,'TURKMENISTAN','TURKMENISTAN','TM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (677,'TURKMENISTAN','TURKMENISTAN','TKM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (678,'TURKMENISTAN','TURKMENISTAN','795');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (679,'TURKS AND CAICOS ISLANDS','TURKS AND CAICOS ISLANDS','TC');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (680,'TURKS AND CAICOS ISLANDS','TURKS AND CAICOS ISLANDS','TCA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (681,'TURKS AND CAICOS ISLANDS','TURKS AND CAICOS ISLANDS','796');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (682,'TUVALU','TUVALU','TV');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (683,'TUVALU','TUVALU','TUV');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (684,'TUVALU','TUVALU','798');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (685,'UGANDA','UGANDA','UG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (686,'UGANDA','UGANDA','UGA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (687,'UGANDA','UGANDA','800');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (688,'UKRAINE','UKRAINE','UA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (689,'UKRAINE','UKRAINE','UKR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (690,'UKRAINE','UKRAINE','804');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (691,'UNITED ARAB EMIRATES','UNITED ARAB EMIRATES','AE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (692,'UNITED ARAB EMIRATES','UNITED ARAB EMIRATES','ARE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (693,'UNITED ARAB EMIRATES','UNITED ARAB EMIRATES','784');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (694,'UNITED KINGDOM','UNITED KINGDOM','GB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (695,'UNITED KINGDOM','UNITED KINGDOM','GBR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (696,'UNITED KINGDOM','UNITED KINGDOM','826');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (697,'UNITED STATES','UNITED STATES','US');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (698,'UNITED STATES','UNITED STATES','USA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (699,'UNITED STATES','UNITED STATES','840');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (700,'UNITED STATES MINOR OUTLYING ISLANDS','UNITED STATES MINOR OUTLYING ISLANDS','UM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (701,'UNITED STATES MINOR OUTLYING ISLANDS','UNITED STATES MINOR OUTLYING ISLANDS','UMI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (702,'UNITED STATES MINOR OUTLYING ISLANDS','UNITED STATES MINOR OUTLYING ISLANDS','581');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (703,'URUGUAY','URUGUAY','UY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (704,'URUGUAY','URUGUAY','URY');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (705,'URUGUAY','URUGUAY','858');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (706,'UZBEKISTAN','UZBEKISTAN','UZ');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (707,'UZBEKISTAN','UZBEKISTAN','UZB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (708,'UZBEKISTAN','UZBEKISTAN','860');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (709,'VANUATU','VANUATU','VU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (710,'VANUATU','VANUATU','VUT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (711,'VANUATU','VANUATU','548');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (712,'VATICAN CITY STATE (HOLY SEE)','VATICAN CITY STATE (HOLY SEE)','VA');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (713,'VATICAN CITY STATE (HOLY SEE)','VATICAN CITY STATE (HOLY SEE)','VAT');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (714,'VATICAN CITY STATE (HOLY SEE)','VATICAN CITY STATE (HOLY SEE)','336');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (715,'VENEZUELA, BOLIVARIAN REPUBLIC OF','VENEZUELA, BOLIVARIAN REPUBLIC OF','VE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (716,'VENEZUELA, BOLIVARIAN REPUBLIC OF','VENEZUELA, BOLIVARIAN REPUBLIC OF','VEN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (717,'VENEZUELA, BOLIVARIAN REPUBLIC OF','VENEZUELA, BOLIVARIAN REPUBLIC OF','862');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (718,'VIET NAM','VIET NAM','VN');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (719,'VIET NAM','VIET NAM','VNM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (720,'VIET NAM','VIET NAM','704');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (721,'VIRGIN ISLANDS (BRITISH)','VIRGIN ISLANDS (BRITISH)','VG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (722,'VIRGIN ISLANDS (BRITISH)','VIRGIN ISLANDS (BRITISH)','VGB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (723,'VIRGIN ISLANDS (BRITISH)','VIRGIN ISLANDS (BRITISH)','092');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (724,'VIRGIN ISLANDS (U.S.)','VIRGIN ISLANDS (U.S.)','VI');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (725,'VIRGIN ISLANDS (U.S.)','VIRGIN ISLANDS (U.S.)','VIR');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (726,'VIRGIN ISLANDS (U.S.)','VIRGIN ISLANDS (U.S.)','850');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (727,'WALLIS AND FUTUNA','WALLIS AND FUTUNA','WF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (728,'WALLIS AND FUTUNA','WALLIS AND FUTUNA','WLF');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (729,'WALLIS AND FUTUNA','WALLIS AND FUTUNA','876');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (730,'WESTERN SAHARA','WESTERN SAHARA','EH');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (731,'WESTERN SAHARA','WESTERN SAHARA','ESH');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (732,'WESTERN SAHARA','WESTERN SAHARA','732');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (733,'YEMEN','YEMEN','YE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (734,'YEMEN','YEMEN','YEM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (735,'YEMEN','YEMEN','887');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (736,'YUGOSLAVIA','YUGOSLAVIA','YU');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (737,'YUGOSLAVIA','YUGOSLAVIA','YUG');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (738,'YUGOSLAVIA','YUGOSLAVIA','891');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (739,'ZAMBIA','ZAMBIA','ZM');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (740,'ZAMBIA','ZAMBIA','ZMB');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (741,'ZAMBIA','ZAMBIA','894');

insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (742,'ZIMBABWE','ZIMBABWE','ZW');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (743,'ZIMBABWE','ZIMBABWE','ZWE');
insert into nationality (nationality_cd, nationality_name, nationality_description, nationality_code) values (744,'ZIMBABWE','ZIMBABWE','716');

-- Structure for table race (OID = 34536):
DROP TABLE IF EXISTS race;
CREATE TABLE race (
    race_cd integer NOT NULL,
    race_name varchar(64) NOT NULL,
    race_description varchar(255),
    race_code varchar(64) NOT NULL
) WITHOUT OIDS;

insert into race (race_cd, race_name, race_description, race_code) values (1,'American Indian or Alaska Native','American Indian or Alaska Native','1002-5');
insert into race (race_cd, race_name, race_description, race_code) values (2,'American Indian','American Indian','1004-1');
insert into race (race_cd, race_name, race_description, race_code) values (3,'Abenaki','Abenaki','1006-6');
insert into race (race_cd, race_name, race_description, race_code) values (4,'Algonquian','Algonquian','1008-2');
insert into race (race_cd, race_name, race_description, race_code) values (5,'Apache','Apache','1010-8');
insert into race (race_cd, race_name, race_description, race_code) values (6,'Chiricahua','Chiricahua','1011-6');
insert into race (race_cd, race_name, race_description, race_code) values (7,'Fort Sill Apache','Fort Sill Apache','1012-4');
insert into race (race_cd, race_name, race_description, race_code) values (8,'Jicarilla Apache','Jicarilla Apache','1013-2');
insert into race (race_cd, race_name, race_description, race_code) values (9,'Lipan Apache','Lipan Apache','1014-0');
insert into race (race_cd, race_name, race_description, race_code) values (10,'Mescalero Apache','Mescalero Apache','1015-7');
insert into race (race_cd, race_name, race_description, race_code) values (11,'Oklahoma Apache','Oklahoma Apache','1016-5');
insert into race (race_cd, race_name, race_description, race_code) values (12,'Payson Apache','Payson Apache','1017-3');
insert into race (race_cd, race_name, race_description, race_code) values (13,'San Carlos Apache ','San Carlos Apache ','1018-1');
insert into race (race_cd, race_name, race_description, race_code) values (14,'White Mountain Apache','White Mountain Apache','1019-9');
insert into race (race_cd, race_name, race_description, race_code) values (15,'Arapaho','Arapaho','1021-5');
insert into race (race_cd, race_name, race_description, race_code) values (16,'Northern Arapaho','Northern Arapaho','1022-3');
insert into race (race_cd, race_name, race_description, race_code) values (17,'Southern Arapaho ','Southern Arapaho ','1023-1');
insert into race (race_cd, race_name, race_description, race_code) values (18,'Wind River Arapaho','Wind River Arapaho','1024-9');
insert into race (race_cd, race_name, race_description, race_code) values (19,'Arikara','Arikara','1026-4');
insert into race (race_cd, race_name, race_description, race_code) values (20,'Assiniboine','Assiniboine','1028-0');
insert into race (race_cd, race_name, race_description, race_code) values (21,'Assiniboine Sioux','Assiniboine Sioux','1030-6');
insert into race (race_cd, race_name, race_description, race_code) values (22,'Fort Peck Assiniboine Sioux','Fort Peck Assiniboine Sioux','1031-4');
insert into race (race_cd, race_name, race_description, race_code) values (23,'Bannock','Bannock','1033-0');
insert into race (race_cd, race_name, race_description, race_code) values (24,'Blackfeet','Blackfeet','1035-5');
insert into race (race_cd, race_name, race_description, race_code) values (25,'Brotherton','Brotherton','1037-1');
insert into race (race_cd, race_name, race_description, race_code) values (26,'Burt Lake Band','Burt Lake Band','1039-7');
insert into race (race_cd, race_name, race_description, race_code) values (27,'Caddo','Caddo','1041-3');
insert into race (race_cd, race_name, race_description, race_code) values (28,'Oklahoma Cado','Oklahoma Cado','1042-1');
insert into race (race_cd, race_name, race_description, race_code) values (29,'Cahuilla','Cahuilla','1044-7');
insert into race (race_cd, race_name, race_description, race_code) values (30,'Agua Caliente Cahuilla','Agua Caliente Cahuilla','1045-4');
insert into race (race_cd, race_name, race_description, race_code) values (31,'Augustine','Augustine','1046-2');
insert into race (race_cd, race_name, race_description, race_code) values (32,'Cabazon','Cabazon','1047-0');
insert into race (race_cd, race_name, race_description, race_code) values (33,'Los Coyotes','Los Coyotes','1048-8');
insert into race (race_cd, race_name, race_description, race_code) values (34,'Morongo','Morongo','1049-6');
insert into race (race_cd, race_name, race_description, race_code) values (35,'Santa Rosa Cahuilla','Santa Rosa Cahuilla','1050-4');
insert into race (race_cd, race_name, race_description, race_code) values (36,'Torres-Martinez','Torres-Martinez','1051-2');
insert into race (race_cd, race_name, race_description, race_code) values (37,'California Tribes','California Tribes','1053-8');
insert into race (race_cd, race_name, race_description, race_code) values (38,'Cahto','Cahto','1054-6');
insert into race (race_cd, race_name, race_description, race_code) values (39,'Chimariko','Chimariko','1055-3');
insert into race (race_cd, race_name, race_description, race_code) values (40,'Coast Miwok','Coast Miwok','1056-1');
insert into race (race_cd, race_name, race_description, race_code) values (41,'Digger','Digger','1057-9');
insert into race (race_cd, race_name, race_description, race_code) values (42,'Kawaiisu','Kawaiisu','1058-7');
insert into race (race_cd, race_name, race_description, race_code) values (43,'Kern River','Kern River','1059-5');
insert into race (race_cd, race_name, race_description, race_code) values (44,'Mattole','Mattole','1060-3');
insert into race (race_cd, race_name, race_description, race_code) values (45,'Red Wood','Red Wood','1061-1');
insert into race (race_cd, race_name, race_description, race_code) values (46,'Santa Rosa','Santa Rosa','1062-9');
insert into race (race_cd, race_name, race_description, race_code) values (47,'Takelma','Takelma','1063-7');
insert into race (race_cd, race_name, race_description, race_code) values (48,'Wappo','Wappo','1064-5');
insert into race (race_cd, race_name, race_description, race_code) values (49,'Yana','Yana','1065-2');
insert into race (race_cd, race_name, race_description, race_code) values (50,'Yuki','Yuki','1066-0');
insert into race (race_cd, race_name, race_description, race_code) values (51,'Canadian and Latin American Indian','Canadian and Latin American Indian','1068-6');
insert into race (race_cd, race_name, race_description, race_code) values (52,'Canadian Indian','Canadian Indian','1069-4');
insert into race (race_cd, race_name, race_description, race_code) values (53,'Central American Indian','Central American Indian','1070-2');
insert into race (race_cd, race_name, race_description, race_code) values (54,'French American Indian','French American Indian','1071-0');
insert into race (race_cd, race_name, race_description, race_code) values (55,'Mexican American Indian','Mexican American Indian','1072-8');
insert into race (race_cd, race_name, race_description, race_code) values (56,'South American Indian','South American Indian','1073-6');
insert into race (race_cd, race_name, race_description, race_code) values (57,'Spanish American Indian','Spanish American Indian','1074-4');
insert into race (race_cd, race_name, race_description, race_code) values (58,'Catawba','Catawba','1076-9');
insert into race (race_cd, race_name, race_description, race_code) values (59,'Cayuse','Cayuse','1078-5');
insert into race (race_cd, race_name, race_description, race_code) values (60,'Chehalis','Chehalis','1080-1');
insert into race (race_cd, race_name, race_description, race_code) values (61,'Chemakuan','Chemakuan','1082-7');
insert into race (race_cd, race_name, race_description, race_code) values (62,'Hoh','Hoh','1083-5');
insert into race (race_cd, race_name, race_description, race_code) values (63,'Quileute','Quileute','1084-3');
insert into race (race_cd, race_name, race_description, race_code) values (64,'Chemehuevi','Chemehuevi','1086-8');
insert into race (race_cd, race_name, race_description, race_code) values (65,'Cherokee','Cherokee','1088-4');
insert into race (race_cd, race_name, race_description, race_code) values (66,'Cherokee Alabama','Cherokee Alabama','1089-2');
insert into race (race_cd, race_name, race_description, race_code) values (67,'Cherokees of Northeast Alabama','Cherokees of Northeast Alabama','1090-0');
insert into race (race_cd, race_name, race_description, race_code) values (68,'Cherokees of Southeast Alabama','Cherokees of Southeast Alabama','1091-8');
insert into race (race_cd, race_name, race_description, race_code) values (69,'Eastern Cherokee','Eastern Cherokee','1092-6');
insert into race (race_cd, race_name, race_description, race_code) values (70,'Echota Cherokee','Echota Cherokee','1093-4');
insert into race (race_cd, race_name, race_description, race_code) values (71,'Etowah Cherokee','Etowah Cherokee','1094-2');
insert into race (race_cd, race_name, race_description, race_code) values (72,'Northern Cherokee ','Northern Cherokee ','1095-9');
insert into race (race_cd, race_name, race_description, race_code) values (73,'Tuscola','Tuscola','1096-7');
insert into race (race_cd, race_name, race_description, race_code) values (74,'United Keetowah Band of Cherokee','United Keetowah Band of Cherokee','1097-5');
insert into race (race_cd, race_name, race_description, race_code) values (75,'Western Cherokee','Western Cherokee','1098-3');
insert into race (race_cd, race_name, race_description, race_code) values (76,'Cherokee Shawnee','Cherokee Shawnee','1100-7');
insert into race (race_cd, race_name, race_description, race_code) values (77,'Cheyenne','Cheyenne','1102-3');
insert into race (race_cd, race_name, race_description, race_code) values (78,'Northern Cheyenne ','Northern Cheyenne ','1103-1');
insert into race (race_cd, race_name, race_description, race_code) values (79,'Southern Cheyenne','Southern Cheyenne','1104-9');
insert into race (race_cd, race_name, race_description, race_code) values (80,'Cheyenne-Arapaho','Cheyenne-Arapaho','1106-4');
insert into race (race_cd, race_name, race_description, race_code) values (81,'Chickahominy','Chickahominy','1108-0');
insert into race (race_cd, race_name, race_description, race_code) values (82,'Eastern Chickahominy','Eastern Chickahominy','1109-8');
insert into race (race_cd, race_name, race_description, race_code) values (83,'Western Chickahominy','Western Chickahominy','1110-6');
insert into race (race_cd, race_name, race_description, race_code) values (84,'Chickasaw','Chickasaw','1112-2');
insert into race (race_cd, race_name, race_description, race_code) values (85,'Chinook','Chinook','1114-8');
insert into race (race_cd, race_name, race_description, race_code) values (86,'Clatsop','Clatsop','1115-5');
insert into race (race_cd, race_name, race_description, race_code) values (87,'Columbia River Chinook ','Columbia River Chinook ','1116-3');
insert into race (race_cd, race_name, race_description, race_code) values (88,'Kathlamet','Kathlamet','1117-1');
insert into race (race_cd, race_name, race_description, race_code) values (89,'Upper Chinook','Upper Chinook','1118-9');
insert into race (race_cd, race_name, race_description, race_code) values (90,'Wakiakum Chinook','Wakiakum Chinook','1119-7');
insert into race (race_cd, race_name, race_description, race_code) values (91,'Willapa Chinook','Willapa Chinook','1120-5');
insert into race (race_cd, race_name, race_description, race_code) values (92,'Wishram','Wishram','1121-3');
insert into race (race_cd, race_name, race_description, race_code) values (93,'Chippewa','Chippewa','1123-9');
insert into race (race_cd, race_name, race_description, race_code) values (94,'Bad River','Bad River','1124-7');
insert into race (race_cd, race_name, race_description, race_code) values (95,'Bay Mills Chippewa','Bay Mills Chippewa','1125-4');
insert into race (race_cd, race_name, race_description, race_code) values (96,'Bois Forte','Bois Forte','1126-2');
insert into race (race_cd, race_name, race_description, race_code) values (97,'Burt Lake Chippewa','Burt Lake Chippewa','1127-0');
insert into race (race_cd, race_name, race_description, race_code) values (98,'Fond du Lac','Fond du Lac','1128-8');
insert into race (race_cd, race_name, race_description, race_code) values (99,'Grand Portage','Grand Portage','1129-6');
insert into race (race_cd, race_name, race_description, race_code) values (100,'Grand Traverse Band of Ottawa/Chippewa','Grand Traverse Band of Ottawa/Chippewa','1130-4');
insert into race (race_cd, race_name, race_description, race_code) values (101,'Keweenaw','Keweenaw','1131-2');
insert into race (race_cd, race_name, race_description, race_code) values (102,'Lac Courte Oreilles','Lac Courte Oreilles','1132-0');
insert into race (race_cd, race_name, race_description, race_code) values (103,'Lac du Flambeau','Lac du Flambeau','1133-8');
insert into race (race_cd, race_name, race_description, race_code) values (104,'Lac Vieux Desert Chippewa','Lac Vieux Desert Chippewa','1134-6');
insert into race (race_cd, race_name, race_description, race_code) values (105,'Lake Superior','Lake Superior','1135-3');
insert into race (race_cd, race_name, race_description, race_code) values (106,'Leech Lake','Leech Lake','1136-1');
insert into race (race_cd, race_name, race_description, race_code) values (107,'Little Shell Chippewa','Little Shell Chippewa','1137-9');
insert into race (race_cd, race_name, race_description, race_code) values (108,'Mille Lacs','Mille Lacs','1138-7');
insert into race (race_cd, race_name, race_description, race_code) values (109,'Minnesota Chippewa','Minnesota Chippewa','1139-5');
insert into race (race_cd, race_name, race_description, race_code) values (110,'Ontonagon','Ontonagon','1140-3');
insert into race (race_cd, race_name, race_description, race_code) values (111,'Red Cliff Chippewa','Red Cliff Chippewa','1141-1');
insert into race (race_cd, race_name, race_description, race_code) values (112,'Red Lake Chippewa','Red Lake Chippewa','1142-9');
insert into race (race_cd, race_name, race_description, race_code) values (113,'Saginaw Chippewa','Saginaw Chippewa','1143-7');
insert into race (race_cd, race_name, race_description, race_code) values (114,'St. Croix Chippewa','St. Croix Chippewa','1144-5');
insert into race (race_cd, race_name, race_description, race_code) values (115,'Sault Ste. Marie Chippewa','Sault Ste. Marie Chippewa','1145-2');
insert into race (race_cd, race_name, race_description, race_code) values (116,'Sokoagon Chippewa ','Sokoagon Chippewa ','1146-0');
insert into race (race_cd, race_name, race_description, race_code) values (117,'Turtle Mountain','Turtle Mountain','1147-8');
insert into race (race_cd, race_name, race_description, race_code) values (118,'White Earth','White Earth','1148-6');
insert into race (race_cd, race_name, race_description, race_code) values (119,'Chippewa Cree','Chippewa Cree','1150-2');
insert into race (race_cd, race_name, race_description, race_code) values (120,'Rocky Boy''s Chippewa Cree','Rocky Boy''s Chippewa Cree','1151-0');
insert into race (race_cd, race_name, race_description, race_code) values (121,'Chitimacha','Chitimacha','1153-6');
insert into race (race_cd, race_name, race_description, race_code) values (122,'Choctaw','Choctaw','1155-1');
insert into race (race_cd, race_name, race_description, race_code) values (123,'Clifton Choctaw','Clifton Choctaw','1156-9');
insert into race (race_cd, race_name, race_description, race_code) values (124,'Jena Choctaw','Jena Choctaw','1157-7');
insert into race (race_cd, race_name, race_description, race_code) values (125,'Mississippi Choctaw','Mississippi Choctaw','1158-5');
insert into race (race_cd, race_name, race_description, race_code) values (126,'Mowa Band of Choctaw','Mowa Band of Choctaw','1159-3');
insert into race (race_cd, race_name, race_description, race_code) values (127,'Oklahoma Choctaw','Oklahoma Choctaw','1160-1');
insert into race (race_cd, race_name, race_description, race_code) values (128,'Chumash','Chumash','1162-7');
insert into race (race_cd, race_name, race_description, race_code) values (129,'Santa Ynez','Santa Ynez','1163-5');
insert into race (race_cd, race_name, race_description, race_code) values (130,'Clear Lake','Clear Lake','1165-0');
insert into race (race_cd, race_name, race_description, race_code) values (131,'Coeur D''Alene','Coeur D''Alene','1167-6');
insert into race (race_cd, race_name, race_description, race_code) values (132,'Coharie','Coharie','1169-2');
insert into race (race_cd, race_name, race_description, race_code) values (133,'Colorado River','Colorado River','1171-8');
insert into race (race_cd, race_name, race_description, race_code) values (134,'Colville','Colville','1173-4');
insert into race (race_cd, race_name, race_description, race_code) values (135,'Comanche','Comanche','1175-9');
insert into race (race_cd, race_name, race_description, race_code) values (136,'Oklahoma Comanche','Oklahoma Comanche','1176-7');
insert into race (race_cd, race_name, race_description, race_code) values (137,'Coos, Lower Umpqua, Siuslaw','Coos, Lower Umpqua, Siuslaw','1178-3');
insert into race (race_cd, race_name, race_description, race_code) values (138,'Coos','Coos','1180-9');
insert into race (race_cd, race_name, race_description, race_code) values (139,'Coquilles','Coquilles','1182-5');
insert into race (race_cd, race_name, race_description, race_code) values (140,'Costanoan','Costanoan','1184-1');
insert into race (race_cd, race_name, race_description, race_code) values (141,'Coushatta','Coushatta','1186-6');
insert into race (race_cd, race_name, race_description, race_code) values (142,'Alabama Coushatta','Alabama Coushatta','1187-4');
insert into race (race_cd, race_name, race_description, race_code) values (143,'Cowlitz','Cowlitz','1189-0');
insert into race (race_cd, race_name, race_description, race_code) values (144,'Cree','Cree','1191-6');
insert into race (race_cd, race_name, race_description, race_code) values (145,'Creek','Creek','1193-2');
insert into race (race_cd, race_name, race_description, race_code) values (146,'Alabama Creek','Alabama Creek','1194-0');
insert into race (race_cd, race_name, race_description, race_code) values (147,'Alabama Quassarte','Alabama Quassarte','1195-7');
insert into race (race_cd, race_name, race_description, race_code) values (148,'Eastern Creek','Eastern Creek','1196-5');
insert into race (race_cd, race_name, race_description, race_code) values (149,'Eastern Muscogee','Eastern Muscogee','1197-3');
insert into race (race_cd, race_name, race_description, race_code) values (150,'Kialegee','Kialegee','1198-1');
insert into race (race_cd, race_name, race_description, race_code) values (151,'Lower Muscogee','Lower Muscogee','1199-9');
insert into race (race_cd, race_name, race_description, race_code) values (152,'Machis Lower Creek Indian','Machis Lower Creek Indian','1200-5');
insert into race (race_cd, race_name, race_description, race_code) values (153,'Poarch Band','Poarch Band','1201-3');
insert into race (race_cd, race_name, race_description, race_code) values (154,'Principal Creek Indian Nation','Principal Creek Indian Nation','1202-1');
insert into race (race_cd, race_name, race_description, race_code) values (155,'Star Clan of Muscogee Creeks','Star Clan of Muscogee Creeks','1203-9');
insert into race (race_cd, race_name, race_description, race_code) values (156,'Thlopthlocco','Thlopthlocco','1204-7');
insert into race (race_cd, race_name, race_description, race_code) values (157,'Tuckabachee','Tuckabachee','1205-4');
insert into race (race_cd, race_name, race_description, race_code) values (158,'Croatan','Croatan','1207-0');
insert into race (race_cd, race_name, race_description, race_code) values (159,'Crow','Crow','1209-6');
insert into race (race_cd, race_name, race_description, race_code) values (160,'Cupeno','Cupeno','1211-2');
insert into race (race_cd, race_name, race_description, race_code) values (161,'Agua Caliente','Agua Caliente','1212-0');
insert into race (race_cd, race_name, race_description, race_code) values (162,'Delaware','Delaware','1214-6');
insert into race (race_cd, race_name, race_description, race_code) values (163,'Eastern Delaware','Eastern Delaware','1215-3');
insert into race (race_cd, race_name, race_description, race_code) values (164,'Lenni-Lenape','Lenni-Lenape','1216-1');
insert into race (race_cd, race_name, race_description, race_code) values (165,'Munsee','Munsee','1217-9');
insert into race (race_cd, race_name, race_description, race_code) values (166,'Oklahoma Delaware','Oklahoma Delaware','1218-7');
insert into race (race_cd, race_name, race_description, race_code) values (167,'Rampough Mountain','Rampough Mountain','1219-5');
insert into race (race_cd, race_name, race_description, race_code) values (168,'Sand Hill','Sand Hill','1220-3');
insert into race (race_cd, race_name, race_description, race_code) values (169,'Campo','Campo','1223-7');
insert into race (race_cd, race_name, race_description, race_code) values (170,'Capitan Grande','Capitan Grande','1224-5');
insert into race (race_cd, race_name, race_description, race_code) values (171,'Cuyapaipe','Cuyapaipe','1225-2');
insert into race (race_cd, race_name, race_description, race_code) values (172,'La Posta','La Posta','1226-0');
insert into race (race_cd, race_name, race_description, race_code) values (173,'Manzanita','Manzanita','1227-8');
insert into race (race_cd, race_name, race_description, race_code) values (174,'Mesa Grande','Mesa Grande','1228-6');
insert into race (race_cd, race_name, race_description, race_code) values (175,'San Pasqual','San Pasqual','1229-4');
insert into race (race_cd, race_name, race_description, race_code) values (176,'Santa Ysabel','Santa Ysabel','1230-2');
insert into race (race_cd, race_name, race_description, race_code) values (177,'Sycuan','Sycuan','1231-0');
insert into race (race_cd, race_name, race_description, race_code) values (178,'Eastern Tribes','Eastern Tribes','1233-6');
insert into race (race_cd, race_name, race_description, race_code) values (179,'Biloxi','Biloxi','1235-1');
insert into race (race_cd, race_name, race_description, race_code) values (180,'Georgetown','Georgetown','1236-9');
insert into race (race_cd, race_name, race_description, race_code) values (181,'Moor','Moor','1237-7');
insert into race (race_cd, race_name, race_description, race_code) values (182,'Nansemond','Nansemond','1238-5');
insert into race (race_cd, race_name, race_description, race_code) values (183,'Natchez','Natchez','1239-3');
insert into race (race_cd, race_name, race_description, race_code) values (184,'Nausu Waiwash','Nausu Waiwash','1240-1');
insert into race (race_cd, race_name, race_description, race_code) values (185,'Nipmuc','Nipmuc','1241-9');
insert into race (race_cd, race_name, race_description, race_code) values (186,'Paugussett','Paugussett','1242-7');
insert into race (race_cd, race_name, race_description, race_code) values (187,'Pocomoke Acohonock','Pocomoke Acohonock','1243-5');
insert into race (race_cd, race_name, race_description, race_code) values (188,'Southeastern Indians ','Southeastern Indians ','1244-3');
insert into race (race_cd, race_name, race_description, race_code) values (189,'Susquehanock','Susquehanock','1245-0');
insert into race (race_cd, race_name, race_description, race_code) values (190,'Tunica Biloxi','Tunica Biloxi','1246-8');
insert into race (race_cd, race_name, race_description, race_code) values (191,'Waccamaw-Siousan','Waccamaw-Siousan','1247-6');
insert into race (race_cd, race_name, race_description, race_code) values (192,'Wicomico','Wicomico','1248-4');
insert into race (race_cd, race_name, race_description, race_code) values (193,'Esselen','Esselen','1250-0');
insert into race (race_cd, race_name, race_description, race_code) values (194,'Fort Belknap','Fort Belknap','1252-6');
insert into race (race_cd, race_name, race_description, race_code) values (195,'Fort Berthold ','Fort Berthold ','1254-2');
insert into race (race_cd, race_name, race_description, race_code) values (196,'Fort Mcdowell','Fort Mcdowell','1256-7');
insert into race (race_cd, race_name, race_description, race_code) values (197,'Fort Hall','Fort Hall','1258-3');
insert into race (race_cd, race_name, race_description, race_code) values (198,'Gabrieleno','Gabrieleno','1260-9');
insert into race (race_cd, race_name, race_description, race_code) values (199,'Grand Ronde','Grand Ronde','1262-5');
insert into race (race_cd, race_name, race_description, race_code) values (200,'Gros Ventres','Gros Ventres','1264-1');
insert into race (race_cd, race_name, race_description, race_code) values (201,'Atsina','Atsina','1265-8');
insert into race (race_cd, race_name, race_description, race_code) values (202,'Haliwa','Haliwa','1267-4');
insert into race (race_cd, race_name, race_description, race_code) values (203,'Hidatsa','Hidatsa','1269-0');
insert into race (race_cd, race_name, race_description, race_code) values (204,'Hoopa','Hoopa','1271-6');
insert into race (race_cd, race_name, race_description, race_code) values (205,'Trinity','Trinity','1272-4');
insert into race (race_cd, race_name, race_description, race_code) values (206,'Whilkut','Whilkut','1273-2');
insert into race (race_cd, race_name, race_description, race_code) values (207,'Hoopa Extension','Hoopa Extension','1275-7');
insert into race (race_cd, race_name, race_description, race_code) values (208,'Houma','Houma','1277-3');
insert into race (race_cd, race_name, race_description, race_code) values (209,'Inaja-Cosmit','Inaja-Cosmit','1279-9');
insert into race (race_cd, race_name, race_description, race_code) values (210,'Iowa','Iowa','1281-5');
insert into race (race_cd, race_name, race_description, race_code) values (211,'Iowa of Kansas-Nebraska','Iowa of Kansas-Nebraska','1282-3');
insert into race (race_cd, race_name, race_description, race_code) values (212,'Iowa of Oklahoma','Iowa of Oklahoma','1283-1');
insert into race (race_cd, race_name, race_description, race_code) values (213,'Iroquois','Iroquois','1285-6');
insert into race (race_cd, race_name, race_description, race_code) values (214,'Cayuga','Cayuga','1286-4');
insert into race (race_cd, race_name, race_description, race_code) values (215,'Mohawk','Mohawk','1287-2');
insert into race (race_cd, race_name, race_description, race_code) values (216,'Oneida','Oneida','1288-0');
insert into race (race_cd, race_name, race_description, race_code) values (217,'Onondaga','Onondaga','1289-8');
insert into race (race_cd, race_name, race_description, race_code) values (218,'Seneca','Seneca','1290-6');
insert into race (race_cd, race_name, race_description, race_code) values (219,'Seneca Nation','Seneca Nation','1291-4');
insert into race (race_cd, race_name, race_description, race_code) values (220,'Seneca-Cayuga','Seneca-Cayuga','1292-2');
insert into race (race_cd, race_name, race_description, race_code) values (221,'Tonawanda Seneca','Tonawanda Seneca','1293-0');
insert into race (race_cd, race_name, race_description, race_code) values (222,'Tuscarora','Tuscarora','1294-8');
insert into race (race_cd, race_name, race_description, race_code) values (223,'Wyandotte','Wyandotte','1295-5');
insert into race (race_cd, race_name, race_description, race_code) values (224,'Juaneno','Juaneno','1297-1');
insert into race (race_cd, race_name, race_description, race_code) values (225,'Kalispel','Kalispel','1299-7');
insert into race (race_cd, race_name, race_description, race_code) values (226,'Karuk','Karuk','1301-1');
insert into race (race_cd, race_name, race_description, race_code) values (227,'Kaw','Kaw','1303-7');
insert into race (race_cd, race_name, race_description, race_code) values (228,'Kickapoo','Kickapoo','1305-2');
insert into race (race_cd, race_name, race_description, race_code) values (229,'Oklahoma Kickapoo','Oklahoma Kickapoo','1306-0');
insert into race (race_cd, race_name, race_description, race_code) values (230,'Texas Kickapoo','Texas Kickapoo','1307-8');
insert into race (race_cd, race_name, race_description, race_code) values (231,'Kiowa','Kiowa','1309-4');
insert into race (race_cd, race_name, race_description, race_code) values (232,'Oklahoma Kiowa','Oklahoma Kiowa','1310-2');
insert into race (race_cd, race_name, race_description, race_code) values (233,'Klallam','Klallam','1312-8');
insert into race (race_cd, race_name, race_description, race_code) values (234,'Jamestown','Jamestown','1313-6');
insert into race (race_cd, race_name, race_description, race_code) values (235,'Lower Elwha','Lower Elwha','1314-4');
insert into race (race_cd, race_name, race_description, race_code) values (236,'Port Gamble Klallam','Port Gamble Klallam','1315-1');
insert into race (race_cd, race_name, race_description, race_code) values (237,'Klamath','Klamath','1317-7');
insert into race (race_cd, race_name, race_description, race_code) values (238,'Konkow','Konkow','1319-3');
insert into race (race_cd, race_name, race_description, race_code) values (239,'Kootenai','Kootenai','1321-9');
insert into race (race_cd, race_name, race_description, race_code) values (240,'Lassik','Lassik','1323-5');
insert into race (race_cd, race_name, race_description, race_code) values (241,'Long Island','Long Island','1325-0');
insert into race (race_cd, race_name, race_description, race_code) values (242,'Matinecock','Matinecock','1326-8');
insert into race (race_cd, race_name, race_description, race_code) values (243,'Montauk','Montauk','1327-6');
insert into race (race_cd, race_name, race_description, race_code) values (244,'Poospatuck','Poospatuck','1328-4');
insert into race (race_cd, race_name, race_description, race_code) values (245,'Setauket','Setauket','1329-2');
insert into race (race_cd, race_name, race_description, race_code) values (246,'Luiseno','Luiseno','1331-8');
insert into race (race_cd, race_name, race_description, race_code) values (247,'La Jolla','La Jolla','1332-6');
insert into race (race_cd, race_name, race_description, race_code) values (248,'Pala','Pala','1333-4');
insert into race (race_cd, race_name, race_description, race_code) values (249,'Pauma','Pauma','1334-2');
insert into race (race_cd, race_name, race_description, race_code) values (250,'Pechanga','Pechanga','1335-9');
insert into race (race_cd, race_name, race_description, race_code) values (251,'Soboba','Soboba','1336-7');
insert into race (race_cd, race_name, race_description, race_code) values (252,'Twenty-Nine Palms','Twenty-Nine Palms','1337-5');
insert into race (race_cd, race_name, race_description, race_code) values (253,'Temecula','Temecula','1338-3');
insert into race (race_cd, race_name, race_description, race_code) values (254,'Lumbee','Lumbee','1340-9');
insert into race (race_cd, race_name, race_description, race_code) values (255,'Lummi','Lummi','1342-5');
insert into race (race_cd, race_name, race_description, race_code) values (256,'Maidu','Maidu','1344-1');
insert into race (race_cd, race_name, race_description, race_code) values (257,'Mountain Maidu','Mountain Maidu','1345-8');
insert into race (race_cd, race_name, race_description, race_code) values (258,'Nishinam','Nishinam','1346-6');
insert into race (race_cd, race_name, race_description, race_code) values (259,'Makah','Makah','1348-2');
insert into race (race_cd, race_name, race_description, race_code) values (260,'Maliseet','Maliseet','1350-8');
insert into race (race_cd, race_name, race_description, race_code) values (261,'Mandan','Mandan','1352-4');
insert into race (race_cd, race_name, race_description, race_code) values (262,'Mattaponi','Mattaponi','1354-0');
insert into race (race_cd, race_name, race_description, race_code) values (263,'Menominee','Menominee','1356-5');
insert into race (race_cd, race_name, race_description, race_code) values (264,'Miami','Miami','1358-1');
insert into race (race_cd, race_name, race_description, race_code) values (265,'Illinois Miami','Illinois Miami','1359-9');
insert into race (race_cd, race_name, race_description, race_code) values (266,'Indiana Miami','Indiana Miami','1360-7');
insert into race (race_cd, race_name, race_description, race_code) values (267,'Oklahoma Miami','Oklahoma Miami','1361-5');
insert into race (race_cd, race_name, race_description, race_code) values (268,'Miccosukee','Miccosukee','1363-1');
insert into race (race_cd, race_name, race_description, race_code) values (269,'Micmac','Micmac','1365-6');
insert into race (race_cd, race_name, race_description, race_code) values (270,'Aroostook','Aroostook','1366-4');
insert into race (race_cd, race_name, race_description, race_code) values (271,'Mission Indians','Mission Indians','1368-0');
insert into race (race_cd, race_name, race_description, race_code) values (272,'Miwok','Miwok','1370-6');
insert into race (race_cd, race_name, race_description, race_code) values (273,'Modoc','Modoc','1372-2');
insert into race (race_cd, race_name, race_description, race_code) values (274,'Mohegan','Mohegan','1374-8');
insert into race (race_cd, race_name, race_description, race_code) values (275,'Mono','Mono','1376-3');
insert into race (race_cd, race_name, race_description, race_code) values (276,'Nanticoke','Nanticoke','1378-9');
insert into race (race_cd, race_name, race_description, race_code) values (277,'Narragansett','Narragansett','1380-5');
insert into race (race_cd, race_name, race_description, race_code) values (278,'Navajo','Navajo','1382-1');
insert into race (race_cd, race_name, race_description, race_code) values (279,'Alamo Navajo','Alamo Navajo','1383-9');
insert into race (race_cd, race_name, race_description, race_code) values (280,'Canoncito Navajo','Canoncito Navajo','1384-7');
insert into race (race_cd, race_name, race_description, race_code) values (281,'Ramah Navajo','Ramah Navajo','1385-4');
insert into race (race_cd, race_name, race_description, race_code) values (282,'Nez Perce','Nez Perce','1387-0');
insert into race (race_cd, race_name, race_description, race_code) values (283,'Nomalaki','Nomalaki','1389-6');
insert into race (race_cd, race_name, race_description, race_code) values (284,'Northwest Tribes','Northwest Tribes','1391-2');
insert into race (race_cd, race_name, race_description, race_code) values (285,'Alsea','Alsea','1392-0');
insert into race (race_cd, race_name, race_description, race_code) values (286,'Celilo','Celilo','1393-8');
insert into race (race_cd, race_name, race_description, race_code) values (287,'Columbia','Columbia','1394-6');
insert into race (race_cd, race_name, race_description, race_code) values (288,'Kalapuya','Kalapuya','1395-3');
insert into race (race_cd, race_name, race_description, race_code) values (289,'Molala','Molala','1396-1');
insert into race (race_cd, race_name, race_description, race_code) values (290,'Talakamish','Talakamish','1397-9');
insert into race (race_cd, race_name, race_description, race_code) values (291,'Tenino','Tenino','1398-7');
insert into race (race_cd, race_name, race_description, race_code) values (292,'Tillamook','Tillamook','1399-5');
insert into race (race_cd, race_name, race_description, race_code) values (293,'Wenatchee','Wenatchee','1400-1');
insert into race (race_cd, race_name, race_description, race_code) values (294,'Yahooskin','Yahooskin','1401-9');
insert into race (race_cd, race_name, race_description, race_code) values (295,'Omaha','Omaha','1403-5');
insert into race (race_cd, race_name, race_description, race_code) values (296,'Oregon Athabaskan','Oregon Athabaskan','1405-0');
insert into race (race_cd, race_name, race_description, race_code) values (297,'Osage','Osage','1407-6');
insert into race (race_cd, race_name, race_description, race_code) values (298,'Otoe-Missouria','Otoe-Missouria','1409-2');
insert into race (race_cd, race_name, race_description, race_code) values (299,'Ottawa','Ottawa','1411-8');
insert into race (race_cd, race_name, race_description, race_code) values (300,'Burt Lake Ottawa','Burt Lake Ottawa','1412-6');
insert into race (race_cd, race_name, race_description, race_code) values (301,'Michigan Ottawa','Michigan Ottawa','1413-4');
insert into race (race_cd, race_name, race_description, race_code) values (302,'Oklahoma Ottawa','Oklahoma Ottawa','1414-2');
insert into race (race_cd, race_name, race_description, race_code) values (303,'Paiute','Paiute','1416-7');
insert into race (race_cd, race_name, race_description, race_code) values (304,'Bishop','Bishop','1417-5');
insert into race (race_cd, race_name, race_description, race_code) values (305,'Bridgeport','Bridgeport','1418-3');
insert into race (race_cd, race_name, race_description, race_code) values (306,'Burns Paiute','Burns Paiute','1419-1');
insert into race (race_cd, race_name, race_description, race_code) values (307,'Cedarville','Cedarville','1420-9');
insert into race (race_cd, race_name, race_description, race_code) values (308,'Fort Bidwell','Fort Bidwell','1421-7');
insert into race (race_cd, race_name, race_description, race_code) values (309,'Fort Independence','Fort Independence','1422-5');
insert into race (race_cd, race_name, race_description, race_code) values (310,'Kaibab','Kaibab','1423-3');
insert into race (race_cd, race_name, race_description, race_code) values (311,'Las Vegas','Las Vegas','1424-1');
insert into race (race_cd, race_name, race_description, race_code) values (312,'Lone Pine','Lone Pine','1425-8');
insert into race (race_cd, race_name, race_description, race_code) values (313,'Lovelock','Lovelock','1426-6');
insert into race (race_cd, race_name, race_description, race_code) values (314,'Malheur Paiute','Malheur Paiute','1427-4');
insert into race (race_cd, race_name, race_description, race_code) values (315,'Moapa','Moapa','1428-2');
insert into race (race_cd, race_name, race_description, race_code) values (316,'Northern Paiute','Northern Paiute','1429-0');
insert into race (race_cd, race_name, race_description, race_code) values (317,'Owens Valley','Owens Valley','1430-8');
insert into race (race_cd, race_name, race_description, race_code) values (318,'Pyramid Lake','Pyramid Lake','1431-6');
insert into race (race_cd, race_name, race_description, race_code) values (319,'San Juan Southern Paiute ','San Juan Southern Paiute ','1432-4');
insert into race (race_cd, race_name, race_description, race_code) values (320,'Southern Paiute ','Southern Paiute ','1433-2');
insert into race (race_cd, race_name, race_description, race_code) values (321,'Summit Lake','Summit Lake','1434-0');
insert into race (race_cd, race_name, race_description, race_code) values (322,'Utu Utu Gwaitu Paiute','Utu Utu Gwaitu Paiute','1435-7');
insert into race (race_cd, race_name, race_description, race_code) values (323,'Walker River','Walker River','1436-5');
insert into race (race_cd, race_name, race_description, race_code) values (324,'Yerington Paiute','Yerington Paiute','1437-3');
insert into race (race_cd, race_name, race_description, race_code) values (325,'Pamunkey','Pamunkey','1439-9');
insert into race (race_cd, race_name, race_description, race_code) values (326,'Passamaquoddy','Passamaquoddy','1441-5');
insert into race (race_cd, race_name, race_description, race_code) values (327,'Indian Township','Indian Township','1442-3');
insert into race (race_cd, race_name, race_description, race_code) values (328,'Pleasant Point Passamaquoddy','Pleasant Point Passamaquoddy','1443-1');
insert into race (race_cd, race_name, race_description, race_code) values (329,'Pawnee','Pawnee','1445-6');
insert into race (race_cd, race_name, race_description, race_code) values (330,'Oklahoma Pawnee','Oklahoma Pawnee','1446-4');
insert into race (race_cd, race_name, race_description, race_code) values (331,'Penobscot','Penobscot','1448-0');
insert into race (race_cd, race_name, race_description, race_code) values (332,'Peoria','Peoria','1450-6');
insert into race (race_cd, race_name, race_description, race_code) values (333,'Oklahoma Peoria','Oklahoma Peoria','1451-4');
insert into race (race_cd, race_name, race_description, race_code) values (334,'Pequot','Pequot','1453-0');
insert into race (race_cd, race_name, race_description, race_code) values (335,'Marshantucket Pequot','Marshantucket Pequot','1454-8');
insert into race (race_cd, race_name, race_description, race_code) values (336,'Pima','Pima','1456-3');
insert into race (race_cd, race_name, race_description, race_code) values (337,'Gila River Pima-Maricopa','Gila River Pima-Maricopa','1457-1');
insert into race (race_cd, race_name, race_description, race_code) values (338,'Salt River Pima-Maricopa','Salt River Pima-Maricopa','1458-9');
insert into race (race_cd, race_name, race_description, race_code) values (339,'Piscataway','Piscataway','1460-5');
insert into race (race_cd, race_name, race_description, race_code) values (340,'Pit River','Pit River','1462-1');
insert into race (race_cd, race_name, race_description, race_code) values (341,'Pomo','Pomo','1464-7');
insert into race (race_cd, race_name, race_description, race_code) values (342,'Central Pomo','Central Pomo','1465-4');
insert into race (race_cd, race_name, race_description, race_code) values (343,'Dry Creek','Dry Creek','1466-2');
insert into race (race_cd, race_name, race_description, race_code) values (344,'Eastern Pomo','Eastern Pomo','1467-0');
insert into race (race_cd, race_name, race_description, race_code) values (345,'Kashia','Kashia','1468-8');
insert into race (race_cd, race_name, race_description, race_code) values (346,'Northern Pomo','Northern Pomo','1469-6');
insert into race (race_cd, race_name, race_description, race_code) values (347,'Scotts Valley','Scotts Valley','1470-4');
insert into race (race_cd, race_name, race_description, race_code) values (348,'Stonyford','Stonyford','1471-2');
insert into race (race_cd, race_name, race_description, race_code) values (349,'Sulphur Bank','Sulphur Bank','1472-0');
insert into race (race_cd, race_name, race_description, race_code) values (350,'Ponca','Ponca','1474-6');
insert into race (race_cd, race_name, race_description, race_code) values (351,'Nebraska Ponca','Nebraska Ponca','1475-3');
insert into race (race_cd, race_name, race_description, race_code) values (352,'Oklahoma Ponca','Oklahoma Ponca','1476-1');
insert into race (race_cd, race_name, race_description, race_code) values (353,'Potawatomi','Potawatomi','1478-7');
insert into race (race_cd, race_name, race_description, race_code) values (354,'Citizen Band Potawatomi','Citizen Band Potawatomi','1479-5');
insert into race (race_cd, race_name, race_description, race_code) values (355,'Forest County','Forest County','1480-3');
insert into race (race_cd, race_name, race_description, race_code) values (356,'Hannahville','Hannahville','1481-1');
insert into race (race_cd, race_name, race_description, race_code) values (357,'Huron Potawatomi','Huron Potawatomi','1482-9');
insert into race (race_cd, race_name, race_description, race_code) values (358,'Pokagon Potawatomi','Pokagon Potawatomi','1483-7');
insert into race (race_cd, race_name, race_description, race_code) values (359,'Prairie Band','Prairie Band','1484-5');
insert into race (race_cd, race_name, race_description, race_code) values (360,'Wisconsin Potawatomi','Wisconsin Potawatomi','1485-2');
insert into race (race_cd, race_name, race_description, race_code) values (361,'Powhatan','Powhatan','1487-8');
insert into race (race_cd, race_name, race_description, race_code) values (362,'Pueblo','Pueblo','1489-4');
insert into race (race_cd, race_name, race_description, race_code) values (363,'Acoma','Acoma','1490-2');
insert into race (race_cd, race_name, race_description, race_code) values (364,'Arizona Tewa','Arizona Tewa','1491-0');
insert into race (race_cd, race_name, race_description, race_code) values (365,'Cochiti','Cochiti','1492-8');
insert into race (race_cd, race_name, race_description, race_code) values (366,'Hopi','Hopi','1493-6');
insert into race (race_cd, race_name, race_description, race_code) values (367,'Isleta','Isleta','1494-4');
insert into race (race_cd, race_name, race_description, race_code) values (368,'Jemez','Jemez','1495-1');
insert into race (race_cd, race_name, race_description, race_code) values (369,'Keres','Keres','1496-9');
insert into race (race_cd, race_name, race_description, race_code) values (370,'Laguna','Laguna','1497-7');
insert into race (race_cd, race_name, race_description, race_code) values (371,'Nambe','Nambe','1498-5');
insert into race (race_cd, race_name, race_description, race_code) values (372,'Picuris','Picuris','1499-3');
insert into race (race_cd, race_name, race_description, race_code) values (373,'Piro','Piro','1500-8');
insert into race (race_cd, race_name, race_description, race_code) values (374,'Pojoaque','Pojoaque','1501-6');
insert into race (race_cd, race_name, race_description, race_code) values (375,'San Felipe','San Felipe','1502-4');
insert into race (race_cd, race_name, race_description, race_code) values (376,'San Ildefonso','San Ildefonso','1503-2');
insert into race (race_cd, race_name, race_description, race_code) values (377,'San Juan Pueblo','San Juan Pueblo','1504-0');
insert into race (race_cd, race_name, race_description, race_code) values (378,'San Juan De','San Juan De','1505-7');
insert into race (race_cd, race_name, race_description, race_code) values (379,'San Juan','San Juan','1506-5');
insert into race (race_cd, race_name, race_description, race_code) values (380,'Sandia','Sandia','1507-3');
insert into race (race_cd, race_name, race_description, race_code) values (381,'Santa Ana','Santa Ana','1508-1');
insert into race (race_cd, race_name, race_description, race_code) values (382,'Santa Clara','Santa Clara','1509-9');
insert into race (race_cd, race_name, race_description, race_code) values (383,'Santo Domingo','Santo Domingo','1510-7');
insert into race (race_cd, race_name, race_description, race_code) values (384,'Taos','Taos','1511-5');
insert into race (race_cd, race_name, race_description, race_code) values (385,'Tesuque','Tesuque','1512-3');
insert into race (race_cd, race_name, race_description, race_code) values (386,'Tewa','Tewa','1513-1');
insert into race (race_cd, race_name, race_description, race_code) values (387,'Tigua','Tigua','1514-9');
insert into race (race_cd, race_name, race_description, race_code) values (388,'Zia','Zia','1515-6');
insert into race (race_cd, race_name, race_description, race_code) values (389,'Zuni','Zuni','1516-4');
insert into race (race_cd, race_name, race_description, race_code) values (390,'Puget Sound Salish','Puget Sound Salish','1518-0');
insert into race (race_cd, race_name, race_description, race_code) values (391,'Duwamish','Duwamish','1519-8');
insert into race (race_cd, race_name, race_description, race_code) values (392,'Kikiallus','Kikiallus','1520-6');
insert into race (race_cd, race_name, race_description, race_code) values (393,'Lower Skagit','Lower Skagit','1521-4');
insert into race (race_cd, race_name, race_description, race_code) values (394,'Muckleshoot','Muckleshoot','1522-2');
insert into race (race_cd, race_name, race_description, race_code) values (395,'Nisqually','Nisqually','1523-0');
insert into race (race_cd, race_name, race_description, race_code) values (396,'Nooksack','Nooksack','1524-8');
insert into race (race_cd, race_name, race_description, race_code) values (397,'Port Madison','Port Madison','1525-5');
insert into race (race_cd, race_name, race_description, race_code) values (398,'Puyallup','Puyallup','1526-3');
insert into race (race_cd, race_name, race_description, race_code) values (399,'Samish','Samish','1527-1');
insert into race (race_cd, race_name, race_description, race_code) values (400,'Sauk-Suiattle','Sauk-Suiattle','1528-9');
insert into race (race_cd, race_name, race_description, race_code) values (401,'Skokomish','Skokomish','1529-7');
insert into race (race_cd, race_name, race_description, race_code) values (402,'Skykomish','Skykomish','1530-5');
insert into race (race_cd, race_name, race_description, race_code) values (403,'Snohomish','Snohomish','1531-3');
insert into race (race_cd, race_name, race_description, race_code) values (404,'Snoqualmie','Snoqualmie','1532-1');
insert into race (race_cd, race_name, race_description, race_code) values (405,'Squaxin Island','Squaxin Island','1533-9');
insert into race (race_cd, race_name, race_description, race_code) values (406,'Steilacoom','Steilacoom','1534-7');
insert into race (race_cd, race_name, race_description, race_code) values (407,'Stillaguamish','Stillaguamish','1535-4');
insert into race (race_cd, race_name, race_description, race_code) values (408,'Suquamish','Suquamish','1536-2');
insert into race (race_cd, race_name, race_description, race_code) values (409,'Swinomish','Swinomish','1537-0');
insert into race (race_cd, race_name, race_description, race_code) values (410,'Tulalip','Tulalip','1538-8');
insert into race (race_cd, race_name, race_description, race_code) values (411,'Upper Skagit','Upper Skagit','1539-6');
insert into race (race_cd, race_name, race_description, race_code) values (412,'Quapaw','Quapaw','1541-2');
insert into race (race_cd, race_name, race_description, race_code) values (413,'Quinault','Quinault','1543-8');
insert into race (race_cd, race_name, race_description, race_code) values (414,'Rappahannock','Rappahannock','1545-3');
insert into race (race_cd, race_name, race_description, race_code) values (415,'Reno-Sparks','Reno-Sparks','1547-9');
insert into race (race_cd, race_name, race_description, race_code) values (416,'Round Valley','Round Valley','1549-5');
insert into race (race_cd, race_name, race_description, race_code) values (417,'Sac and Fox','Sac and Fox','1551-1');
insert into race (race_cd, race_name, race_description, race_code) values (418,'Iowa Sac and Fox','Iowa Sac and Fox','1552-9');
insert into race (race_cd, race_name, race_description, race_code) values (419,'Missouri Sac and Fox','Missouri Sac and Fox','1553-7');
insert into race (race_cd, race_name, race_description, race_code) values (420,'Oklahoma Sac and Fox','Oklahoma Sac and Fox','1554-5');
insert into race (race_cd, race_name, race_description, race_code) values (421,'Salinan','Salinan','1556-0');
insert into race (race_cd, race_name, race_description, race_code) values (422,'Salish','Salish','1558-6');
insert into race (race_cd, race_name, race_description, race_code) values (423,'Salish and Kootenai','Salish and Kootenai','1560-2');
insert into race (race_cd, race_name, race_description, race_code) values (424,'Schaghticoke','Schaghticoke','1562-8');
insert into race (race_cd, race_name, race_description, race_code) values (425,'Scott Valley','Scott Valley','1564-4');
insert into race (race_cd, race_name, race_description, race_code) values (426,'Seminole','Seminole','1566-9');
insert into race (race_cd, race_name, race_description, race_code) values (427,'Big Cypress','Big Cypress','1567-7');
insert into race (race_cd, race_name, race_description, race_code) values (428,'Brighton','Brighton','1568-5');
insert into race (race_cd, race_name, race_description, race_code) values (429,'Florida Seminole','Florida Seminole','1569-3');
insert into race (race_cd, race_name, race_description, race_code) values (430,'Hollywood Seminole','Hollywood Seminole','1570-1');
insert into race (race_cd, race_name, race_description, race_code) values (431,'Oklahoma Seminole','Oklahoma Seminole','1571-9');
insert into race (race_cd, race_name, race_description, race_code) values (432,'Serrano','Serrano','1573-5');
insert into race (race_cd, race_name, race_description, race_code) values (433,'San Manual','San Manual','1574-3');
insert into race (race_cd, race_name, race_description, race_code) values (434,'Shasta','Shasta','1576-8');
insert into race (race_cd, race_name, race_description, race_code) values (435,'Shawnee','Shawnee','1578-4');
insert into race (race_cd, race_name, race_description, race_code) values (436,'Absentee Shawnee','Absentee Shawnee','1579-2');
insert into race (race_cd, race_name, race_description, race_code) values (437,'Eastern Shawnee','Eastern Shawnee','1580-0');
insert into race (race_cd, race_name, race_description, race_code) values (438,'Shinnecock','Shinnecock','1582-6');
insert into race (race_cd, race_name, race_description, race_code) values (439,'Shoalwater Bay','Shoalwater Bay','1584-2');
insert into race (race_cd, race_name, race_description, race_code) values (440,'Shoshone','Shoshone','1586-7');
insert into race (race_cd, race_name, race_description, race_code) values (441,'Battle Mountain','Battle Mountain','1587-5');
insert into race (race_cd, race_name, race_description, race_code) values (442,'Duckwater','Duckwater','1588-3');
insert into race (race_cd, race_name, race_description, race_code) values (443,'Elko','Elko','1589-1');
insert into race (race_cd, race_name, race_description, race_code) values (444,'Ely','Ely','1590-9');
insert into race (race_cd, race_name, race_description, race_code) values (445,'Goshute','Goshute','1591-7');
insert into race (race_cd, race_name, race_description, race_code) values (446,'Panamint','Panamint','1592-5');
insert into race (race_cd, race_name, race_description, race_code) values (447,'Ruby Valley','Ruby Valley','1593-3');
insert into race (race_cd, race_name, race_description, race_code) values (448,'Skull Valley','Skull Valley','1594-1');
insert into race (race_cd, race_name, race_description, race_code) values (449,'South Fork Shoshone','South Fork Shoshone','1595-8');
insert into race (race_cd, race_name, race_description, race_code) values (450,'Te-Moak Western Shoshone','Te-Moak Western Shoshone','1596-6');
insert into race (race_cd, race_name, race_description, race_code) values (451,'Timbi-Sha Shoshone','Timbi-Sha Shoshone','1597-4');
insert into race (race_cd, race_name, race_description, race_code) values (452,'Washakie','Washakie','1598-2');
insert into race (race_cd, race_name, race_description, race_code) values (453,'Wind River Shoshone','Wind River Shoshone','1599-0');
insert into race (race_cd, race_name, race_description, race_code) values (454,'Yomba','Yomba','1600-6');
insert into race (race_cd, race_name, race_description, race_code) values (455,'Shoshone Paiute','Shoshone Paiute','1602-2');
insert into race (race_cd, race_name, race_description, race_code) values (456,'Duck Valley','Duck Valley','1603-0');
insert into race (race_cd, race_name, race_description, race_code) values (457,'Fallon','Fallon','1604-8');
insert into race (race_cd, race_name, race_description, race_code) values (458,'Fort McDermitt','Fort McDermitt','1605-5');
insert into race (race_cd, race_name, race_description, race_code) values (459,'Siletz','Siletz','1607-1');
insert into race (race_cd, race_name, race_description, race_code) values (460,'Sioux','Sioux','1609-7');
insert into race (race_cd, race_name, race_description, race_code) values (461,'Blackfoot Sioux ','Blackfoot Sioux ','1610-5');
insert into race (race_cd, race_name, race_description, race_code) values (462,'Brule Sioux','Brule Sioux','1611-3');
insert into race (race_cd, race_name, race_description, race_code) values (463,'Cheyenne River Sioux','Cheyenne River Sioux','1612-1');
insert into race (race_cd, race_name, race_description, race_code) values (464,'Crow Creek Sioux','Crow Creek Sioux','1613-9');
insert into race (race_cd, race_name, race_description, race_code) values (465,'Dakota Sioux','Dakota Sioux','1614-7');
insert into race (race_cd, race_name, race_description, race_code) values (466,'Flandreau Santee','Flandreau Santee','1615-4');
insert into race (race_cd, race_name, race_description, race_code) values (467,'Fort Peck','Fort Peck','1616-2');
insert into race (race_cd, race_name, race_description, race_code) values (468,'Lake Traverse Sioux','Lake Traverse Sioux','1617-0');
insert into race (race_cd, race_name, race_description, race_code) values (469,'Lower Brule Sioux','Lower Brule Sioux','1618-8');
insert into race (race_cd, race_name, race_description, race_code) values (470,'Lower Sioux','Lower Sioux','1619-6');
insert into race (race_cd, race_name, race_description, race_code) values (471,'Mdewakanton Sioux','Mdewakanton Sioux','1620-4');
insert into race (race_cd, race_name, race_description, race_code) values (472,'Miniconjou','Miniconjou','1621-2');
insert into race (race_cd, race_name, race_description, race_code) values (473,'Oglala Sioux','Oglala Sioux','1622-0');
insert into race (race_cd, race_name, race_description, race_code) values (474,'Pine Ridge Sioux','Pine Ridge Sioux','1623-8');
insert into race (race_cd, race_name, race_description, race_code) values (475,'Pipestone Sioux','Pipestone Sioux','1624-6');
insert into race (race_cd, race_name, race_description, race_code) values (476,'Prairie Island Sioux','Prairie Island Sioux','1625-3');
insert into race (race_cd, race_name, race_description, race_code) values (477,'Prior Lake Sioux','Prior Lake Sioux','1626-1');
insert into race (race_cd, race_name, race_description, race_code) values (478,'Rosebud Sioux','Rosebud Sioux','1627-9');
insert into race (race_cd, race_name, race_description, race_code) values (479,'Sans Arc Sioux','Sans Arc Sioux','1628-7');
insert into race (race_cd, race_name, race_description, race_code) values (480,'Santee Sioux','Santee Sioux','1629-5');
insert into race (race_cd, race_name, race_description, race_code) values (481,'Sisseton-Wahpeton','Sisseton-Wahpeton','1630-3');
insert into race (race_cd, race_name, race_description, race_code) values (482,'Sisseton Sioux','Sisseton Sioux','1631-1');
insert into race (race_cd, race_name, race_description, race_code) values (483,'Spirit Lake Sioux','Spirit Lake Sioux','1632-9');
insert into race (race_cd, race_name, race_description, race_code) values (484,'Standing Rock Sioux','Standing Rock Sioux','1633-7');
insert into race (race_cd, race_name, race_description, race_code) values (485,'Teton Sioux','Teton Sioux','1634-5');
insert into race (race_cd, race_name, race_description, race_code) values (486,'Two Kettle Sioux','Two Kettle Sioux','1635-2');
insert into race (race_cd, race_name, race_description, race_code) values (487,'Upper Sioux','Upper Sioux','1636-0');
insert into race (race_cd, race_name, race_description, race_code) values (488,'Wahpekute Sioux','Wahpekute Sioux','1637-8');
insert into race (race_cd, race_name, race_description, race_code) values (489,'Wahpeton Sioux','Wahpeton Sioux','1638-6');
insert into race (race_cd, race_name, race_description, race_code) values (490,'Wazhaza Sioux','Wazhaza Sioux','1639-4');
insert into race (race_cd, race_name, race_description, race_code) values (491,'Yankton Sioux','Yankton Sioux','1640-2');
insert into race (race_cd, race_name, race_description, race_code) values (492,'Yanktonai Sioux','Yanktonai Sioux','1641-0');
insert into race (race_cd, race_name, race_description, race_code) values (493,'Siuslaw','Siuslaw','1643-6');
insert into race (race_cd, race_name, race_description, race_code) values (494,'Spokane','Spokane','1645-1');
insert into race (race_cd, race_name, race_description, race_code) values (495,'Stewart','Stewart','1647-7');
insert into race (race_cd, race_name, race_description, race_code) values (496,'Stockbridge','Stockbridge','1649-3');
insert into race (race_cd, race_name, race_description, race_code) values (497,'Susanville','Susanville','1651-9');
insert into race (race_cd, race_name, race_description, race_code) values (498,'Tohono O''Odham','Tohono O''Odham','1653-5');
insert into race (race_cd, race_name, race_description, race_code) values (499,'Ak-Chin','Ak-Chin','1654-3');
insert into race (race_cd, race_name, race_description, race_code) values (500,'Gila Bend','Gila Bend','1655-0');
insert into race (race_cd, race_name, race_description, race_code) values (501,'San Xavier','San Xavier','1656-8');
insert into race (race_cd, race_name, race_description, race_code) values (502,'Sells','Sells','1657-6');
insert into race (race_cd, race_name, race_description, race_code) values (503,'Tolowa','Tolowa','1659-2');
insert into race (race_cd, race_name, race_description, race_code) values (504,'Tonkawa','Tonkawa','1661-8');
insert into race (race_cd, race_name, race_description, race_code) values (505,'Tygh','Tygh','1663-4');
insert into race (race_cd, race_name, race_description, race_code) values (506,'Umatilla','Umatilla','1665-9');
insert into race (race_cd, race_name, race_description, race_code) values (507,'Umpqua','Umpqua','1667-5');
insert into race (race_cd, race_name, race_description, race_code) values (508,'Cow Creek Umpqua','Cow Creek Umpqua','1668-3');
insert into race (race_cd, race_name, race_description, race_code) values (509,'Ute','Ute','1670-9');
insert into race (race_cd, race_name, race_description, race_code) values (510,'Allen Canyon','Allen Canyon','1671-7');
insert into race (race_cd, race_name, race_description, race_code) values (511,'Uintah Ute','Uintah Ute','1672-5');
insert into race (race_cd, race_name, race_description, race_code) values (512,'Ute Mountain Ute','Ute Mountain Ute','1673-3');
insert into race (race_cd, race_name, race_description, race_code) values (513,'Wailaki','Wailaki','1675-8');
insert into race (race_cd, race_name, race_description, race_code) values (514,'Walla-Walla','Walla-Walla','1677-4');
insert into race (race_cd, race_name, race_description, race_code) values (515,'Wampanoag','Wampanoag','1679-0');
insert into race (race_cd, race_name, race_description, race_code) values (516,'Gay Head Wampanoag ','Gay Head Wampanoag ','1680-8');
insert into race (race_cd, race_name, race_description, race_code) values (517,'Mashpee Wampanoag','Mashpee Wampanoag','1681-6');
insert into race (race_cd, race_name, race_description, race_code) values (518,'Warm Springs','Warm Springs','1683-2');
insert into race (race_cd, race_name, race_description, race_code) values (519,'Wascopum','Wascopum','1685-7');
insert into race (race_cd, race_name, race_description, race_code) values (520,'Washoe','Washoe','1687-3');
insert into race (race_cd, race_name, race_description, race_code) values (521,'Alpine','Alpine','1688-1');
insert into race (race_cd, race_name, race_description, race_code) values (522,'Carson','Carson','1689-9');
insert into race (race_cd, race_name, race_description, race_code) values (523,'Dresslerville','Dresslerville','1690-7');
insert into race (race_cd, race_name, race_description, race_code) values (524,'Wichita','Wichita','1692-3');
insert into race (race_cd, race_name, race_description, race_code) values (525,'Wind River','Wind River','1694-9');
insert into race (race_cd, race_name, race_description, race_code) values (526,'Winnebago','Winnebago','1696-4');
insert into race (race_cd, race_name, race_description, race_code) values (527,'Ho-chunk','Ho-chunk','1697-2');
insert into race (race_cd, race_name, race_description, race_code) values (528,'Nebraska Winnebago','Nebraska Winnebago','1698-0');
insert into race (race_cd, race_name, race_description, race_code) values (529,'Winnemucca','Winnemucca','1700-4');
insert into race (race_cd, race_name, race_description, race_code) values (530,'Wintun','Wintun','1702-0');
insert into race (race_cd, race_name, race_description, race_code) values (531,'Wiyot','Wiyot','1704-6');
insert into race (race_cd, race_name, race_description, race_code) values (532,'Table Bluff ','Table Bluff ','1705-3');
insert into race (race_cd, race_name, race_description, race_code) values (533,'Yakama','Yakama','1707-9');
insert into race (race_cd, race_name, race_description, race_code) values (534,'Yakama Cowlitz','Yakama Cowlitz','1709-5');
insert into race (race_cd, race_name, race_description, race_code) values (535,'Yaqui','Yaqui','1711-1');
insert into race (race_cd, race_name, race_description, race_code) values (536,'Barrio Libre','Barrio Libre','1712-9');
insert into race (race_cd, race_name, race_description, race_code) values (537,'Pascua Yaqui','Pascua Yaqui','1713-7');
insert into race (race_cd, race_name, race_description, race_code) values (538,'Yavapai Apache','Yavapai Apache','1715-2');
insert into race (race_cd, race_name, race_description, race_code) values (539,'Yokuts','Yokuts','1717-8');
insert into race (race_cd, race_name, race_description, race_code) values (540,'Chukchansi','Chukchansi','1718-6');
insert into race (race_cd, race_name, race_description, race_code) values (541,'Tachi','Tachi','1719-4');
insert into race (race_cd, race_name, race_description, race_code) values (542,'Tule River','Tule River','1720-2');
insert into race (race_cd, race_name, race_description, race_code) values (543,'Yuchi','Yuchi','1722-8');
insert into race (race_cd, race_name, race_description, race_code) values (544,'Yuman','Yuman','1724-4');
insert into race (race_cd, race_name, race_description, race_code) values (545,'Cocopah','Cocopah','1725-1');
insert into race (race_cd, race_name, race_description, race_code) values (546,'Havasupai','Havasupai','1726-9');
insert into race (race_cd, race_name, race_description, race_code) values (547,'Hualapai','Hualapai','1727-7');
insert into race (race_cd, race_name, race_description, race_code) values (548,'Maricopa','Maricopa','1728-5');
insert into race (race_cd, race_name, race_description, race_code) values (549,'Mohave','Mohave','1729-3');
insert into race (race_cd, race_name, race_description, race_code) values (550,'Quechan','Quechan','1730-1');
insert into race (race_cd, race_name, race_description, race_code) values (551,'Yavapai','Yavapai','1731-9');
insert into race (race_cd, race_name, race_description, race_code) values (552,'Yurok','Yurok','1732-7');
insert into race (race_cd, race_name, race_description, race_code) values (553,'Coast Yurok','Coast Yurok','1733-5');
insert into race (race_cd, race_name, race_description, race_code) values (554,'Alaska Native','Alaska Native','1735-0');
insert into race (race_cd, race_name, race_description, race_code) values (555,'Alaska Indian  ','Alaska Indian  ','1737-6');
insert into race (race_cd, race_name, race_description, race_code) values (556,'Alaskan Athabascan ','Alaskan Athabascan ','1739-2');
insert into race (race_cd, race_name, race_description, race_code) values (557,'Ahtna','Ahtna','1740-0');
insert into race (race_cd, race_name, race_description, race_code) values (558,'Alatna ','Alatna ','1741-8');
insert into race (race_cd, race_name, race_description, race_code) values (559,'Alexander','Alexander','1742-6');
insert into race (race_cd, race_name, race_description, race_code) values (560,'Allakaket','Allakaket','1743-4');
insert into race (race_cd, race_name, race_description, race_code) values (561,'Alanvik','Alanvik','1744-2');
insert into race (race_cd, race_name, race_description, race_code) values (562,'Anvik','Anvik','1745-9');
insert into race (race_cd, race_name, race_description, race_code) values (563,'Arctic','Arctic','1746-7');
insert into race (race_cd, race_name, race_description, race_code) values (564,'Beaver','Beaver','1747-5');
insert into race (race_cd, race_name, race_description, race_code) values (565,'Birch Creek','Birch Creek','1748-3');
insert into race (race_cd, race_name, race_description, race_code) values (566,'Cantwell','Cantwell','1749-1');
insert into race (race_cd, race_name, race_description, race_code) values (567,'Chalkyitsik','Chalkyitsik','1750-9');
insert into race (race_cd, race_name, race_description, race_code) values (568,'Chickaloon','Chickaloon','1751-7');
insert into race (race_cd, race_name, race_description, race_code) values (569,'Chistochina','Chistochina','1752-5');
insert into race (race_cd, race_name, race_description, race_code) values (570,'Chitina','Chitina','1753-3');
insert into race (race_cd, race_name, race_description, race_code) values (571,'Circle','Circle','1754-1');
insert into race (race_cd, race_name, race_description, race_code) values (572,'Cook Inlet','Cook Inlet','1755-8');
insert into race (race_cd, race_name, race_description, race_code) values (573,'Copper Center','Copper Center','1756-6');
insert into race (race_cd, race_name, race_description, race_code) values (574,'Copper River','Copper River','1757-4');
insert into race (race_cd, race_name, race_description, race_code) values (575,'Dot Lake','Dot Lake','1758-2');
insert into race (race_cd, race_name, race_description, race_code) values (576,'Doyon','Doyon','1759-0');
insert into race (race_cd, race_name, race_description, race_code) values (577,'Eagle','Eagle','1760-8');
insert into race (race_cd, race_name, race_description, race_code) values (578,'Eklutna','Eklutna','1761-6');
insert into race (race_cd, race_name, race_description, race_code) values (579,'Evansville','Evansville','1762-4');
insert into race (race_cd, race_name, race_description, race_code) values (580,'Fort Yukon','Fort Yukon','1763-2');
insert into race (race_cd, race_name, race_description, race_code) values (581,'Gakona','Gakona','1764-0');
insert into race (race_cd, race_name, race_description, race_code) values (582,'Galena','Galena','1765-7');
insert into race (race_cd, race_name, race_description, race_code) values (583,'Grayling','Grayling','1766-5');
insert into race (race_cd, race_name, race_description, race_code) values (584,'Gulkana','Gulkana','1767-3');
insert into race (race_cd, race_name, race_description, race_code) values (585,'Healy Lake','Healy Lake','1768-1');
insert into race (race_cd, race_name, race_description, race_code) values (586,'Holy Cross','Holy Cross','1769-9');
insert into race (race_cd, race_name, race_description, race_code) values (587,'Hughes','Hughes','1770-7');
insert into race (race_cd, race_name, race_description, race_code) values (588,'Huslia','Huslia','1771-5');
insert into race (race_cd, race_name, race_description, race_code) values (589,'Iliamna','Iliamna','1772-3');
insert into race (race_cd, race_name, race_description, race_code) values (590,'Kaltag','Kaltag','1773-1');
insert into race (race_cd, race_name, race_description, race_code) values (591,'Kluti Kaah','Kluti Kaah','1774-9');
insert into race (race_cd, race_name, race_description, race_code) values (592,'Knik','Knik','1775-6');
insert into race (race_cd, race_name, race_description, race_code) values (593,'Koyukuk','Koyukuk','1776-4');
insert into race (race_cd, race_name, race_description, race_code) values (594,'Lake Minchumina','Lake Minchumina','1777-2');
insert into race (race_cd, race_name, race_description, race_code) values (595,'Lime','Lime','1778-0');
insert into race (race_cd, race_name, race_description, race_code) values (596,'Mcgrath','Mcgrath','1779-8');
insert into race (race_cd, race_name, race_description, race_code) values (597,'Manley Hot Springs','Manley Hot Springs','1780-6');
insert into race (race_cd, race_name, race_description, race_code) values (598,'Mentasta Lake','Mentasta Lake','1781-4');
insert into race (race_cd, race_name, race_description, race_code) values (599,'Minto','Minto','1782-2');
insert into race (race_cd, race_name, race_description, race_code) values (600,'Nenana','Nenana','1783-0');
insert into race (race_cd, race_name, race_description, race_code) values (601,'Nikolai','Nikolai','1784-8');
insert into race (race_cd, race_name, race_description, race_code) values (602,'Ninilchik','Ninilchik','1785-5');
insert into race (race_cd, race_name, race_description, race_code) values (603,'Nondalton','Nondalton','1786-3');
insert into race (race_cd, race_name, race_description, race_code) values (604,'Northway','Northway','1787-1');
insert into race (race_cd, race_name, race_description, race_code) values (605,'Nulato','Nulato','1788-9');
insert into race (race_cd, race_name, race_description, race_code) values (606,'Pedro Bay','Pedro Bay','1789-7');
insert into race (race_cd, race_name, race_description, race_code) values (607,'Rampart','Rampart','1790-5');
insert into race (race_cd, race_name, race_description, race_code) values (608,'Ruby','Ruby','1791-3');
insert into race (race_cd, race_name, race_description, race_code) values (609,'Salamatof','Salamatof','1792-1');
insert into race (race_cd, race_name, race_description, race_code) values (610,'Seldovia','Seldovia','1793-9');
insert into race (race_cd, race_name, race_description, race_code) values (611,'Slana','Slana','1794-7');
insert into race (race_cd, race_name, race_description, race_code) values (612,'Shageluk','Shageluk','1795-4');
insert into race (race_cd, race_name, race_description, race_code) values (613,'Stevens','Stevens','1796-2');
insert into race (race_cd, race_name, race_description, race_code) values (614,'Stony River','Stony River','1797-0');
insert into race (race_cd, race_name, race_description, race_code) values (615,'Takotna','Takotna','1798-8');
insert into race (race_cd, race_name, race_description, race_code) values (616,'Tanacross','Tanacross','1799-6');
insert into race (race_cd, race_name, race_description, race_code) values (617,'Tanaina','Tanaina','1800-2');
insert into race (race_cd, race_name, race_description, race_code) values (618,'Tanana','Tanana','1801-0');
insert into race (race_cd, race_name, race_description, race_code) values (619,'Tanana Chiefs','Tanana Chiefs','1802-8');
insert into race (race_cd, race_name, race_description, race_code) values (620,'Tazlina','Tazlina','1803-6');
insert into race (race_cd, race_name, race_description, race_code) values (621,'Telida','Telida','1804-4');
insert into race (race_cd, race_name, race_description, race_code) values (622,'Tetlin','Tetlin','1805-1');
insert into race (race_cd, race_name, race_description, race_code) values (623,'Tok','Tok','1806-9');
insert into race (race_cd, race_name, race_description, race_code) values (624,'Tyonek','Tyonek','1807-7');
insert into race (race_cd, race_name, race_description, race_code) values (625,'Venetie','Venetie','1808-5');
insert into race (race_cd, race_name, race_description, race_code) values (626,'Wiseman','Wiseman','1809-3');
insert into race (race_cd, race_name, race_description, race_code) values (627,'Southeast Alaska','Southeast Alaska','1811-9');
insert into race (race_cd, race_name, race_description, race_code) values (628,'Tlingit-Haida','Tlingit-Haida','1813-5');
insert into race (race_cd, race_name, race_description, race_code) values (629,'Angoon','Angoon','1814-3');
insert into race (race_cd, race_name, race_description, race_code) values (630,'Central Council of Tlingit and Haida Tribes','Central Council of Tlingit and Haida Tribes','1815-0');
insert into race (race_cd, race_name, race_description, race_code) values (631,'Chilkat','Chilkat','1816-8');
insert into race (race_cd, race_name, race_description, race_code) values (632,'Chilkoot','Chilkoot','1817-6');
insert into race (race_cd, race_name, race_description, race_code) values (633,'Craig','Craig','1818-4');
insert into race (race_cd, race_name, race_description, race_code) values (634,'Douglas','Douglas','1819-2');
insert into race (race_cd, race_name, race_description, race_code) values (635,'Haida','Haida','1820-0');
insert into race (race_cd, race_name, race_description, race_code) values (636,'Hoonah','Hoonah','1821-8');
insert into race (race_cd, race_name, race_description, race_code) values (637,'Hydaburg','Hydaburg','1822-6');
insert into race (race_cd, race_name, race_description, race_code) values (638,'Kake','Kake','1823-4');
insert into race (race_cd, race_name, race_description, race_code) values (639,'Kasaan','Kasaan','1824-2');
insert into race (race_cd, race_name, race_description, race_code) values (640,'Kenaitze','Kenaitze','1825-9');
insert into race (race_cd, race_name, race_description, race_code) values (641,'Ketchikan','Ketchikan','1826-7');
insert into race (race_cd, race_name, race_description, race_code) values (642,'Klawock','Klawock','1827-5');
insert into race (race_cd, race_name, race_description, race_code) values (643,'Pelican','Pelican','1828-3');
insert into race (race_cd, race_name, race_description, race_code) values (644,'Petersburg','Petersburg','1829-1');
insert into race (race_cd, race_name, race_description, race_code) values (645,'Saxman','Saxman','1830-9');
insert into race (race_cd, race_name, race_description, race_code) values (646,'Sitka','Sitka','1831-7');
insert into race (race_cd, race_name, race_description, race_code) values (647,'Tenakee Springs','Tenakee Springs','1832-5');
insert into race (race_cd, race_name, race_description, race_code) values (648,'Tlingit','Tlingit','1833-3');
insert into race (race_cd, race_name, race_description, race_code) values (649,'Wrangell','Wrangell','1834-1');
insert into race (race_cd, race_name, race_description, race_code) values (650,'Yakutat','Yakutat','1835-8');
insert into race (race_cd, race_name, race_description, race_code) values (651,'Tsimshian','Tsimshian','1837-4');
insert into race (race_cd, race_name, race_description, race_code) values (652,'Metlakatla','Metlakatla','1838-2');
insert into race (race_cd, race_name, race_description, race_code) values (653,'Eskimo','Eskimo','1840-8');
insert into race (race_cd, race_name, race_description, race_code) values (654,'Greenland Eskimo','Greenland Eskimo','1842-4');
insert into race (race_cd, race_name, race_description, race_code) values (655,'Inupiat Eskimo','Inupiat Eskimo','1844-0');
insert into race (race_cd, race_name, race_description, race_code) values (656,'Ambler','Ambler','1845-7');
insert into race (race_cd, race_name, race_description, race_code) values (657,'Anaktuvuk','Anaktuvuk','1846-5');
insert into race (race_cd, race_name, race_description, race_code) values (658,'Anaktuvuk Pass','Anaktuvuk Pass','1847-3');
insert into race (race_cd, race_name, race_description, race_code) values (659,'Arctic Slope Inupiat','Arctic Slope Inupiat','1848-1');
insert into race (race_cd, race_name, race_description, race_code) values (660,'Arctic Slope Corporation','Arctic Slope Corporation','1849-9');
insert into race (race_cd, race_name, race_description, race_code) values (661,'Atqasuk','Atqasuk','1850-7');
insert into race (race_cd, race_name, race_description, race_code) values (662,'Barrow','Barrow','1851-5');
insert into race (race_cd, race_name, race_description, race_code) values (663,'Bering Straits Inupiat','Bering Straits Inupiat','1852-3');
insert into race (race_cd, race_name, race_description, race_code) values (664,'Brevig Mission','Brevig Mission','1853-1');
insert into race (race_cd, race_name, race_description, race_code) values (665,'Buckland','Buckland','1854-9');
insert into race (race_cd, race_name, race_description, race_code) values (666,'Chinik','Chinik','1855-6');
insert into race (race_cd, race_name, race_description, race_code) values (667,'Council','Council','1856-4');
insert into race (race_cd, race_name, race_description, race_code) values (668,'Deering','Deering','1857-2');
insert into race (race_cd, race_name, race_description, race_code) values (669,'Elim','Elim','1858-0');
insert into race (race_cd, race_name, race_description, race_code) values (670,'Golovin','Golovin','1859-8');
insert into race (race_cd, race_name, race_description, race_code) values (671,'Inalik Diomede','Inalik Diomede','1860-6');
insert into race (race_cd, race_name, race_description, race_code) values (672,'Inupiaq ','Inupiaq ','1861-4');
insert into race (race_cd, race_name, race_description, race_code) values (673,'Kaktovik','Kaktovik','1862-2');
insert into race (race_cd, race_name, race_description, race_code) values (674,'Kawerak','Kawerak','1863-0');
insert into race (race_cd, race_name, race_description, race_code) values (675,'Kiana','Kiana','1864-8');
insert into race (race_cd, race_name, race_description, race_code) values (676,'Kivalina','Kivalina','1865-5');
insert into race (race_cd, race_name, race_description, race_code) values (677,'Kobuk','Kobuk','1866-3');
insert into race (race_cd, race_name, race_description, race_code) values (678,'Kotzebue','Kotzebue','1867-1');
insert into race (race_cd, race_name, race_description, race_code) values (679,'Koyuk','Koyuk','1868-9');
insert into race (race_cd, race_name, race_description, race_code) values (680,'Kwiguk','Kwiguk','1869-7');
insert into race (race_cd, race_name, race_description, race_code) values (681,'Mauneluk Inupiat','Mauneluk Inupiat','1870-5');
insert into race (race_cd, race_name, race_description, race_code) values (682,'Nana Inupiat','Nana Inupiat','1871-3');
insert into race (race_cd, race_name, race_description, race_code) values (683,'Noatak','Noatak','1872-1');
insert into race (race_cd, race_name, race_description, race_code) values (684,'Nome','Nome','1873-9');
insert into race (race_cd, race_name, race_description, race_code) values (685,'Noorvik','Noorvik','1874-7');
insert into race (race_cd, race_name, race_description, race_code) values (686,'Nuiqsut','Nuiqsut','1875-4');
insert into race (race_cd, race_name, race_description, race_code) values (687,'Point Hope','Point Hope','1876-2');
insert into race (race_cd, race_name, race_description, race_code) values (688,'Point Lay','Point Lay','1877-0');
insert into race (race_cd, race_name, race_description, race_code) values (689,'Selawik','Selawik','1878-8');
insert into race (race_cd, race_name, race_description, race_code) values (690,'Shaktoolik','Shaktoolik','1879-6');
insert into race (race_cd, race_name, race_description, race_code) values (691,'Shishmaref','Shishmaref','1880-4');
insert into race (race_cd, race_name, race_description, race_code) values (692,'Shungnak','Shungnak','1881-2');
insert into race (race_cd, race_name, race_description, race_code) values (693,'Solomon','Solomon','1882-0');
insert into race (race_cd, race_name, race_description, race_code) values (694,'Teller','Teller','1883-8');
insert into race (race_cd, race_name, race_description, race_code) values (695,'Unalakleet','Unalakleet','1884-6');
insert into race (race_cd, race_name, race_description, race_code) values (696,'Wainwright','Wainwright','1885-3');
insert into race (race_cd, race_name, race_description, race_code) values (697,'Wales','Wales','1886-1');
insert into race (race_cd, race_name, race_description, race_code) values (698,'White Mountain','White Mountain','1887-9');
insert into race (race_cd, race_name, race_description, race_code) values (699,'White Mountain Inupiat','White Mountain Inupiat','1888-7');
insert into race (race_cd, race_name, race_description, race_code) values (700,'Mary''s Igloo','Mary''s Igloo','1889-5');
insert into race (race_cd, race_name, race_description, race_code) values (701,'Siberian Eskimo','Siberian Eskimo','1891-1');
insert into race (race_cd, race_name, race_description, race_code) values (702,'Gambell','Gambell','1892-9');
insert into race (race_cd, race_name, race_description, race_code) values (703,'Savoonga','Savoonga','1893-7');
insert into race (race_cd, race_name, race_description, race_code) values (704,'Siberian Yupik','Siberian Yupik','1894-5');
insert into race (race_cd, race_name, race_description, race_code) values (705,'Yupik Eskimo','Yupik Eskimo','1896-0');
insert into race (race_cd, race_name, race_description, race_code) values (706,'Akiachak','Akiachak','1897-8');
insert into race (race_cd, race_name, race_description, race_code) values (707,'Akiak','Akiak','1898-6');
insert into race (race_cd, race_name, race_description, race_code) values (708,'Alakanuk','Alakanuk','1899-4');
insert into race (race_cd, race_name, race_description, race_code) values (709,'Aleknagik','Aleknagik','1900-0');
insert into race (race_cd, race_name, race_description, race_code) values (710,'Andreafsky','Andreafsky','1901-8');
insert into race (race_cd, race_name, race_description, race_code) values (711,'Aniak','Aniak','1902-6');
insert into race (race_cd, race_name, race_description, race_code) values (712,'Atmautluak','Atmautluak','1903-4');
insert into race (race_cd, race_name, race_description, race_code) values (713,'Bethel','Bethel','1904-2');
insert into race (race_cd, race_name, race_description, race_code) values (714,'Bill Moore''s Slough','Bill Moore''s Slough','1905-9');
insert into race (race_cd, race_name, race_description, race_code) values (715,'Bristol Bay Yupik','Bristol Bay Yupik','1906-7');
insert into race (race_cd, race_name, race_description, race_code) values (716,'Calista Yupik','Calista Yupik','1907-5');
insert into race (race_cd, race_name, race_description, race_code) values (717,'Chefornak','Chefornak','1908-3');
insert into race (race_cd, race_name, race_description, race_code) values (718,'Chevak','Chevak','1909-1');
insert into race (race_cd, race_name, race_description, race_code) values (719,'Chuathbaluk','Chuathbaluk','1910-9');
insert into race (race_cd, race_name, race_description, race_code) values (720,'Clark''s Point','Clark''s Point','1911-7');
insert into race (race_cd, race_name, race_description, race_code) values (721,'Crooked Creek','Crooked Creek','1912-5');
insert into race (race_cd, race_name, race_description, race_code) values (722,'Dillingham','Dillingham','1913-3');
insert into race (race_cd, race_name, race_description, race_code) values (723,'Eek','Eek','1914-1');
insert into race (race_cd, race_name, race_description, race_code) values (724,'Ekuk','Ekuk','1915-8');
insert into race (race_cd, race_name, race_description, race_code) values (725,'Ekwok','Ekwok','1916-6');
insert into race (race_cd, race_name, race_description, race_code) values (726,'Emmonak','Emmonak','1917-4');
insert into race (race_cd, race_name, race_description, race_code) values (727,'Goodnews Bay','Goodnews Bay','1918-2');
insert into race (race_cd, race_name, race_description, race_code) values (728,'Hooper Bay','Hooper Bay','1919-0');
insert into race (race_cd, race_name, race_description, race_code) values (729,'Iqurmuit (Russian Mission)','Iqurmuit (Russian Mission)','1920-8');
insert into race (race_cd, race_name, race_description, race_code) values (730,'Kalskag','Kalskag','1921-6');
insert into race (race_cd, race_name, race_description, race_code) values (731,'Kasigluk','Kasigluk','1922-4');
insert into race (race_cd, race_name, race_description, race_code) values (732,'Kipnuk','Kipnuk','1923-2');
insert into race (race_cd, race_name, race_description, race_code) values (733,'Koliganek','Koliganek','1924-0');
insert into race (race_cd, race_name, race_description, race_code) values (734,'Kongiganak','Kongiganak','1925-7');
insert into race (race_cd, race_name, race_description, race_code) values (735,'Kotlik','Kotlik','1926-5');
insert into race (race_cd, race_name, race_description, race_code) values (736,'Kwethluk','Kwethluk','1927-3');
insert into race (race_cd, race_name, race_description, race_code) values (737,'Kwigillingok','Kwigillingok','1928-1');
insert into race (race_cd, race_name, race_description, race_code) values (738,'Levelock','Levelock','1929-9');
insert into race (race_cd, race_name, race_description, race_code) values (739,'Lower Kalskag','Lower Kalskag','1930-7');
insert into race (race_cd, race_name, race_description, race_code) values (740,'Manokotak','Manokotak','1931-5');
insert into race (race_cd, race_name, race_description, race_code) values (741,'Marshall','Marshall','1932-3');
insert into race (race_cd, race_name, race_description, race_code) values (742,'Mekoryuk','Mekoryuk','1933-1');
insert into race (race_cd, race_name, race_description, race_code) values (743,'Mountain Village','Mountain Village','1934-9');
insert into race (race_cd, race_name, race_description, race_code) values (744,'Naknek','Naknek','1935-6');
insert into race (race_cd, race_name, race_description, race_code) values (745,'Napaumute','Napaumute','1936-4');
insert into race (race_cd, race_name, race_description, race_code) values (746,'Napakiak','Napakiak','1937-2');
insert into race (race_cd, race_name, race_description, race_code) values (747,'Napaskiak','Napaskiak','1938-0');
insert into race (race_cd, race_name, race_description, race_code) values (748,'Newhalen','Newhalen','1939-8');
insert into race (race_cd, race_name, race_description, race_code) values (749,'New Stuyahok','New Stuyahok','1940-6');
insert into race (race_cd, race_name, race_description, race_code) values (750,'Newtok','Newtok','1941-4');
insert into race (race_cd, race_name, race_description, race_code) values (751,'Nightmute','Nightmute','1942-2');
insert into race (race_cd, race_name, race_description, race_code) values (752,'Nunapitchukv','Nunapitchukv','1943-0');
insert into race (race_cd, race_name, race_description, race_code) values (753,'Oscarville','Oscarville','1944-8');
insert into race (race_cd, race_name, race_description, race_code) values (754,'Pilot Station','Pilot Station','1945-5');
insert into race (race_cd, race_name, race_description, race_code) values (755,'Pitkas Point','Pitkas Point','1946-3');
insert into race (race_cd, race_name, race_description, race_code) values (756,'Platinum','Platinum','1947-1');
insert into race (race_cd, race_name, race_description, race_code) values (757,'Portage Creek','Portage Creek','1948-9');
insert into race (race_cd, race_name, race_description, race_code) values (758,'Quinhagak','Quinhagak','1949-7');
insert into race (race_cd, race_name, race_description, race_code) values (759,'Red Devil','Red Devil','1950-5');
insert into race (race_cd, race_name, race_description, race_code) values (760,'St. Michael','St. Michael','1951-3');
insert into race (race_cd, race_name, race_description, race_code) values (761,'Scammon Bay','Scammon Bay','1952-1');
insert into race (race_cd, race_name, race_description, race_code) values (762,'Sheldon''s Point','Sheldon''s Point','1953-9');
insert into race (race_cd, race_name, race_description, race_code) values (763,'Sleetmute','Sleetmute','1954-7');
insert into race (race_cd, race_name, race_description, race_code) values (764,'Stebbins','Stebbins','1955-4');
insert into race (race_cd, race_name, race_description, race_code) values (765,'Togiak','Togiak','1956-2');
insert into race (race_cd, race_name, race_description, race_code) values (766,'Toksook','Toksook','1957-0');
insert into race (race_cd, race_name, race_description, race_code) values (767,'Tulukskak','Tulukskak','1958-8');
insert into race (race_cd, race_name, race_description, race_code) values (768,'Tuntutuliak','Tuntutuliak','1959-6');
insert into race (race_cd, race_name, race_description, race_code) values (769,'Tununak','Tununak','1960-4');
insert into race (race_cd, race_name, race_description, race_code) values (770,'Twin Hills','Twin Hills','1961-2');
insert into race (race_cd, race_name, race_description, race_code) values (771,'Georgetown','Georgetown','1962-0');
insert into race (race_cd, race_name, race_description, race_code) values (772,'St. Mary''s','St. Mary''s','1963-8');
insert into race (race_cd, race_name, race_description, race_code) values (773,'Umkumiate','Umkumiate','1964-6');
insert into race (race_cd, race_name, race_description, race_code) values (774,'Aleut','Aleut','1966-1');
insert into race (race_cd, race_name, race_description, race_code) values (775,'Alutiiq Aleut','Alutiiq Aleut','1968-7');
insert into race (race_cd, race_name, race_description, race_code) values (776,'Tatitlek','Tatitlek','1969-5');
insert into race (race_cd, race_name, race_description, race_code) values (777,'Ugashik','Ugashik','1970-3');
insert into race (race_cd, race_name, race_description, race_code) values (778,'Bristol Bay Aleut','Bristol Bay Aleut','1972-9');
insert into race (race_cd, race_name, race_description, race_code) values (779,'Chignik','Chignik','1973-7');
insert into race (race_cd, race_name, race_description, race_code) values (780,'Chignik Lake','Chignik Lake','1974-5');
insert into race (race_cd, race_name, race_description, race_code) values (781,'Egegik','Egegik','1975-2');
insert into race (race_cd, race_name, race_description, race_code) values (782,'Igiugig','Igiugig','1976-0');
insert into race (race_cd, race_name, race_description, race_code) values (783,'Ivanof Bay','Ivanof Bay','1977-8');
insert into race (race_cd, race_name, race_description, race_code) values (784,'King Salmon','King Salmon','1978-6');
insert into race (race_cd, race_name, race_description, race_code) values (785,'Kokhanok','Kokhanok','1979-4');
insert into race (race_cd, race_name, race_description, race_code) values (786,'Perryville','Perryville','1980-2');
insert into race (race_cd, race_name, race_description, race_code) values (787,'Pilot Point','Pilot Point','1981-0');
insert into race (race_cd, race_name, race_description, race_code) values (788,'Port Heiden','Port Heiden','1982-8');
insert into race (race_cd, race_name, race_description, race_code) values (789,'Chugach Aleut','Chugach Aleut','1984-4');
insert into race (race_cd, race_name, race_description, race_code) values (790,'Chenega','Chenega','1985-1');
insert into race (race_cd, race_name, race_description, race_code) values (791,'Chugach Corporation ','Chugach Corporation ','1986-9');
insert into race (race_cd, race_name, race_description, race_code) values (792,'English Bay','English Bay','1987-7');
insert into race (race_cd, race_name, race_description, race_code) values (793,'Port Graham','Port Graham','1988-5');
insert into race (race_cd, race_name, race_description, race_code) values (794,'Eyak','Eyak','1990-1');
insert into race (race_cd, race_name, race_description, race_code) values (795,'Koniag Aleut','Koniag Aleut','1992-7');
insert into race (race_cd, race_name, race_description, race_code) values (796,'Akhiok','Akhiok','1993-5');
insert into race (race_cd, race_name, race_description, race_code) values (797,'Agdaagux','Agdaagux','1994-3');
insert into race (race_cd, race_name, race_description, race_code) values (798,'Karluk','Karluk','1995-0');
insert into race (race_cd, race_name, race_description, race_code) values (799,'Kodiak','Kodiak','1996-8');
insert into race (race_cd, race_name, race_description, race_code) values (800,'Larsen Bay','Larsen Bay','1997-6');
insert into race (race_cd, race_name, race_description, race_code) values (801,'Old Harbor ','Old Harbor ','1998-4');
insert into race (race_cd, race_name, race_description, race_code) values (802,'Ouzinkie','Ouzinkie','1999-2');
insert into race (race_cd, race_name, race_description, race_code) values (803,'Port Lions','Port Lions','2000-8');
insert into race (race_cd, race_name, race_description, race_code) values (804,'Sugpiaq','Sugpiaq','2002-4');
insert into race (race_cd, race_name, race_description, race_code) values (805,'Suqpigaq','Suqpigaq','2004-0');
insert into race (race_cd, race_name, race_description, race_code) values (806,'Unangan Aleut','Unangan Aleut','2006-5');
insert into race (race_cd, race_name, race_description, race_code) values (807,'Akutan','Akutan','2007-3');
insert into race (race_cd, race_name, race_description, race_code) values (808,'Aleut Corporation','Aleut Corporation','2008-1');
insert into race (race_cd, race_name, race_description, race_code) values (809,'Aleutian','Aleutian','2009-9');
insert into race (race_cd, race_name, race_description, race_code) values (810,'Aleutian Islander','Aleutian Islander','2010-7');
insert into race (race_cd, race_name, race_description, race_code) values (811,'Atka','Atka','2011-5');
insert into race (race_cd, race_name, race_description, race_code) values (812,'Belkofski','Belkofski','2012-3');
insert into race (race_cd, race_name, race_description, race_code) values (813,'Chignik Lagoon','Chignik Lagoon','2013-1');
insert into race (race_cd, race_name, race_description, race_code) values (814,'King Cove','King Cove','2014-9');
insert into race (race_cd, race_name, race_description, race_code) values (815,'False Pass','False Pass','2015-6');
insert into race (race_cd, race_name, race_description, race_code) values (816,'Nelson Lagoon','Nelson Lagoon','2016-4');
insert into race (race_cd, race_name, race_description, race_code) values (817,'Nikolski','Nikolski','2017-2');
insert into race (race_cd, race_name, race_description, race_code) values (818,'Pauloff Harbor','Pauloff Harbor','2018-0');
insert into race (race_cd, race_name, race_description, race_code) values (819,'Qagan Toyagungin','Qagan Toyagungin','2019-8');
insert into race (race_cd, race_name, race_description, race_code) values (820,'Qawalangin','Qawalangin','2020-6');
insert into race (race_cd, race_name, race_description, race_code) values (821,'St. George','St. George','2021-4');
insert into race (race_cd, race_name, race_description, race_code) values (822,'St. Paul','St. Paul','2022-2');
insert into race (race_cd, race_name, race_description, race_code) values (823,'Sand Point','Sand Point','2023-0');
insert into race (race_cd, race_name, race_description, race_code) values (824,'South Naknek','South Naknek','2024-8');
insert into race (race_cd, race_name, race_description, race_code) values (825,'Unalaska','Unalaska','2025-5');
insert into race (race_cd, race_name, race_description, race_code) values (826,'Unga','Unga','2026-3');
insert into race (race_cd, race_name, race_description, race_code) values (827,'Asian','Asian','2028-9');
insert into race (race_cd, race_name, race_description, race_code) values (828,'Asian Indian','Asian Indian','2029-7');
insert into race (race_cd, race_name, race_description, race_code) values (829,'Bangladeshi','Bangladeshi','2030-5');
insert into race (race_cd, race_name, race_description, race_code) values (830,'Bhutanese','Bhutanese','2031-3');
insert into race (race_cd, race_name, race_description, race_code) values (831,'Burmese','Burmese','2032-1');
insert into race (race_cd, race_name, race_description, race_code) values (832,'Cambodian','Cambodian','2033-9');
insert into race (race_cd, race_name, race_description, race_code) values (833,'Chinese','Chinese','2034-7');
insert into race (race_cd, race_name, race_description, race_code) values (834,'Taiwanese','Taiwanese','2035-4');
insert into race (race_cd, race_name, race_description, race_code) values (835,'Filipino','Filipino','2036-2');
insert into race (race_cd, race_name, race_description, race_code) values (836,'Hmong','Hmong','2037-0');
insert into race (race_cd, race_name, race_description, race_code) values (837,'Indonesian','Indonesian','2038-8');
insert into race (race_cd, race_name, race_description, race_code) values (838,'Japanese','Japanese','2039-6');
insert into race (race_cd, race_name, race_description, race_code) values (839,'Korean','Korean','2040-4');
insert into race (race_cd, race_name, race_description, race_code) values (840,'Laotian','Laotian','2041-2');
insert into race (race_cd, race_name, race_description, race_code) values (841,'Malaysian','Malaysian','2042-0');
insert into race (race_cd, race_name, race_description, race_code) values (842,'Okinawan','Okinawan','2043-8');
insert into race (race_cd, race_name, race_description, race_code) values (843,'Pakistani','Pakistani','2044-6');
insert into race (race_cd, race_name, race_description, race_code) values (844,'Sri Lankan','Sri Lankan','2045-3');
insert into race (race_cd, race_name, race_description, race_code) values (845,'Thai','Thai','2046-1');
insert into race (race_cd, race_name, race_description, race_code) values (846,'Vietnamese','Vietnamese','2047-9');
insert into race (race_cd, race_name, race_description, race_code) values (847,'Iwo Jiman ','Iwo Jiman ','2048-7');
insert into race (race_cd, race_name, race_description, race_code) values (848,'Maldivian','Maldivian','2049-5');
insert into race (race_cd, race_name, race_description, race_code) values (849,'Nepalese','Nepalese','2050-3');
insert into race (race_cd, race_name, race_description, race_code) values (850,'Singaporean','Singaporean','2051-1');
insert into race (race_cd, race_name, race_description, race_code) values (851,'Madagascar','Madagascar','2052-9');
insert into race (race_cd, race_name, race_description, race_code) values (852,'Black or African American','Black or African American','2054-5');
insert into race (race_cd, race_name, race_description, race_code) values (853,'Black','Black','2056-0');
insert into race (race_cd, race_name, race_description, race_code) values (854,'African American','African American','2058-6');
insert into race (race_cd, race_name, race_description, race_code) values (855,'African','African','2060-2');
insert into race (race_cd, race_name, race_description, race_code) values (856,'Botswanan','Botswanan','2061-0');
insert into race (race_cd, race_name, race_description, race_code) values (857,'Ethiopian','Ethiopian','2062-8');
insert into race (race_cd, race_name, race_description, race_code) values (858,'Liberian','Liberian','2063-6');
insert into race (race_cd, race_name, race_description, race_code) values (859,'Namibian','Namibian','2064-4');
insert into race (race_cd, race_name, race_description, race_code) values (860,'Nigerian','Nigerian','2065-1');
insert into race (race_cd, race_name, race_description, race_code) values (861,'Zairean','Zairean','2066-9');
insert into race (race_cd, race_name, race_description, race_code) values (862,'Bahamian','Bahamian','2067-7');
insert into race (race_cd, race_name, race_description, race_code) values (863,'Barbadian','Barbadian','2068-5');
insert into race (race_cd, race_name, race_description, race_code) values (864,'Dominican','Dominican','2069-3');
insert into race (race_cd, race_name, race_description, race_code) values (865,'Dominica Islander','Dominica Islander','2070-1');
insert into race (race_cd, race_name, race_description, race_code) values (866,'Haitian','Haitian','2071-9');
insert into race (race_cd, race_name, race_description, race_code) values (867,'Jamaican','Jamaican','2072-7');
insert into race (race_cd, race_name, race_description, race_code) values (868,'Tobagoan','Tobagoan','2073-5');
insert into race (race_cd, race_name, race_description, race_code) values (869,'Trinidadian','Trinidadian','2074-3');
insert into race (race_cd, race_name, race_description, race_code) values (870,'West Indian','West Indian','2075-0');
insert into race (race_cd, race_name, race_description, race_code) values (871,'Native Hawaiian or Other Pacific Islander','Native Hawaiian or Other Pacific Islander','2076-8');
insert into race (race_cd, race_name, race_description, race_code) values (872,'Polynesian','Polynesian','2078-4');
insert into race (race_cd, race_name, race_description, race_code) values (873,'Native Hawaiian ','Native Hawaiian ','2079-2');
insert into race (race_cd, race_name, race_description, race_code) values (874,'Samoan ','Samoan ','2080-0');
insert into race (race_cd, race_name, race_description, race_code) values (875,'Tahitian','Tahitian','2081-8');
insert into race (race_cd, race_name, race_description, race_code) values (876,'Tongan','Tongan','2082-6');
insert into race (race_cd, race_name, race_description, race_code) values (877,'Tokelauan','Tokelauan','2083-4');
insert into race (race_cd, race_name, race_description, race_code) values (878,'Micronesian','Micronesian','2085-9');
insert into race (race_cd, race_name, race_description, race_code) values (879,'Guamanian or Chamorro','Guamanian or Chamorro','2086-7');
insert into race (race_cd, race_name, race_description, race_code) values (880,'Guamanian','Guamanian','2087-5');
insert into race (race_cd, race_name, race_description, race_code) values (881,'Chamorro','Chamorro','2088-3');
insert into race (race_cd, race_name, race_description, race_code) values (882,'Mariana Islander','Mariana Islander','2089-1');
insert into race (race_cd, race_name, race_description, race_code) values (883,'Marshallese','Marshallese','2090-9');
insert into race (race_cd, race_name, race_description, race_code) values (884,'Palauan','Palauan','2091-7');
insert into race (race_cd, race_name, race_description, race_code) values (885,'Carolinian','Carolinian','2092-5');
insert into race (race_cd, race_name, race_description, race_code) values (886,'Kosraean','Kosraean','2093-3');
insert into race (race_cd, race_name, race_description, race_code) values (887,'Pohnpeian','Pohnpeian','2094-1');
insert into race (race_cd, race_name, race_description, race_code) values (888,'Saipanese','Saipanese','2095-8');
insert into race (race_cd, race_name, race_description, race_code) values (889,'Kiribati','Kiribati','2096-6');
insert into race (race_cd, race_name, race_description, race_code) values (890,'Chuukese','Chuukese','2097-4');
insert into race (race_cd, race_name, race_description, race_code) values (891,'Yapese','Yapese','2098-2');
insert into race (race_cd, race_name, race_description, race_code) values (892,'Melanesian','Melanesian','2100-6');
insert into race (race_cd, race_name, race_description, race_code) values (893,'Fijian','Fijian','2101-4');
insert into race (race_cd, race_name, race_description, race_code) values (894,'Papua New Guinean','Papua New Guinean','2102-2');
insert into race (race_cd, race_name, race_description, race_code) values (895,'Solomon Islander','Solomon Islander','2103-0');
insert into race (race_cd, race_name, race_description, race_code) values (896,'New Hebrides','New Hebrides','2104-8');
insert into race (race_cd, race_name, race_description, race_code) values (897,'Other Pacific Islander','Other Pacific Islander','2500-7');
insert into race (race_cd, race_name, race_description, race_code) values (898,'White','White','2106-3');
insert into race (race_cd, race_name, race_description, race_code) values (899,'European','European','2108-9');
insert into race (race_cd, race_name, race_description, race_code) values (900,'Armenian','Armenian','2109-7');
insert into race (race_cd, race_name, race_description, race_code) values (901,'English','English','2110-5');
insert into race (race_cd, race_name, race_description, race_code) values (902,'French','French','2111-3');
insert into race (race_cd, race_name, race_description, race_code) values (903,'German','German','2112-1');
insert into race (race_cd, race_name, race_description, race_code) values (904,'Irish','Irish','2113-9');
insert into race (race_cd, race_name, race_description, race_code) values (905,'Italian','Italian','2114-7');
insert into race (race_cd, race_name, race_description, race_code) values (906,'Polish','Polish','2115-4');
insert into race (race_cd, race_name, race_description, race_code) values (907,'Scottish','Scottish','2116-2');
insert into race (race_cd, race_name, race_description, race_code) values (908,'Middle Eastern or North African','Middle Eastern or North African','2118-8');
insert into race (race_cd, race_name, race_description, race_code) values (909,'Assyrian','Assyrian','2119-6');
insert into race (race_cd, race_name, race_description, race_code) values (910,'Egyptian','Egyptian','2120-4');
insert into race (race_cd, race_name, race_description, race_code) values (911,'Iranian','Iranian','2121-2');
insert into race (race_cd, race_name, race_description, race_code) values (912,'Iraqi','Iraqi','2122-0');
insert into race (race_cd, race_name, race_description, race_code) values (913,'Lebanese','Lebanese','2123-8');
insert into race (race_cd, race_name, race_description, race_code) values (914,'Palestinian','Palestinian','2124-6');
insert into race (race_cd, race_name, race_description, race_code) values (915,'Syrian','Syrian','2125-3');
insert into race (race_cd, race_name, race_description, race_code) values (916,'Afghanistani','Afghanistani','2126-1');
insert into race (race_cd, race_name, race_description, race_code) values (917,'Israeili','Israeili','2127-9');
insert into race (race_cd, race_name, race_description, race_code) values (918,'Arab','Arab','2129-5');
insert into race (race_cd, race_name, race_description, race_code) values (919,'Other Race','Other Race','2131-1');

-- Structure for table religion (OID = 34541):
DROP TABLE IF EXISTS religion;
CREATE TABLE religion (
    religion_cd integer NOT NULL,
    religion_name varchar(64) NOT NULL,
    religion_description varchar(255),
    religion_code varchar(64) NOT NULL
) WITHOUT OIDS;

-- Structure for table phone_type:
DROP TABLE IF EXISTS phone_type;
CREATE TABLE phone_type (
    phone_type_cd integer NOT NULL,
    phone_type_name varchar(64) NOT NULL,
    phone_type_description varchar(255),
    phone_type_code varchar(64) NOT NULL
) WITHOUT OIDS;

insert into phone_type (phone_type_cd, phone_type_name, phone_type_description, phone_type_code) values (1, 'Beeper Number', 'Beeper Number or paging device suitable to solicit or to leave a very short message', 'B');
insert into phone_type (phone_type_cd, phone_type_name, phone_type_description, phone_type_code) values (2, 'Cellular Phone Number', 'Cellular Phone Number', 'C');
insert into phone_type (phone_type_cd, phone_type_name, phone_type_description, phone_type_code) values (3, 'E-mail Address', 'E-mail Address', 'E');
insert into phone_type (phone_type_cd, phone_type_name, phone_type_description, phone_type_code) values (4, 'Fax Number', 'Fax Number', 'F');
insert into phone_type (phone_type_cd, phone_type_name, phone_type_description, phone_type_code) values (5, 'Home Phone Number', 'Home Phone Number', 'H');
insert into phone_type (phone_type_cd, phone_type_name, phone_type_description, phone_type_code) values (6, 'Office Phone Number', 'Office Phone Number', 'O');
insert into phone_type (phone_type_cd, phone_type_name, phone_type_description, phone_type_code) values (7, 'Primary Home Number', 'The primary home to reach a person after business hours', 'HP');
insert into phone_type (phone_type_cd, phone_type_name, phone_type_description, phone_type_code) values (8, 'Vacation Home Number', 'A vacation home to reach a person while on vacation', 'HV');
insert into phone_type (phone_type_cd, phone_type_name, phone_type_description, phone_type_code) values (9, 'Answering Service', 'An automated answering machine used for less urgent cases', 'AS');
insert into phone_type (phone_type_cd, phone_type_name, phone_type_description, phone_type_code) values (10, 'Emergency Number', 'A contact specifically designated to be used for emergencies. This is the first choice in emergencies, independent of any other use codes.', 'EC');
insert into phone_type (phone_type_cd, phone_type_name, phone_type_description, phone_type_code) values (11, 'Unknown', 'Phone type is unknown.', 'UN');

DROP TABLE IF EXISTS country;
CREATE TABLE country (
	country_id integer,
    country_name varchar(150),
	alpha2_code varchar(2),
	alpha3_code varchar(3),
	iso_numerical_code integer
) WITHOUT OIDS;

INSERT INTO country (country_id, country_name, alpha2_code, alpha3_code, iso_numerical_code) VALUES
  (1, 'AALAND ISLANDS', 'AX', 'ALA', 248),
  (2, 'AFGHANISTAN', 'AF', 'AFG', 4),
  (3, 'ALBANIA', 'AL', 'ALB', 8),
  (4, 'ALGERIA', 'DZ', 'DZA', 12),
  (5, 'AMERICAN SAMOA', 'AS', 'ASM', 16),
  (6, 'ANDORRA', 'AD', 'AND', 20),
  (7, 'ANGOLA', 'AO', 'AGO', 24),
  (8, 'ANGUILLA', 'AI', 'AIA', 660),
  (9, 'ANTARCTICA', 'AQ', 'ATA', 10),
  (10, 'ANTIGUA AND BARBUDA', 'AG', 'ATG', 28),
  (11, 'ARGENTINA', 'AR', 'ARG', 32),
  (12, 'ARMENIA', 'AM', 'ARM', 51),
  (13, 'ARUBA', 'AW', 'ABW', 533),
  (14, 'AUSTRALIA', 'AU', 'AUS', 36),
  (15, 'AUSTRIA', 'AT', 'AUT', 40),
  (16, 'AZERBAIJAN', 'AZ', 'AZE', 31),
  (17, 'BAHAMAS', 'BS', 'BHS', 44),
  (18, 'BAHRAIN', 'BH', 'BHR', 48),
  (19, 'BANGLADESH', 'BD', 'BGD', 50),
  (20, 'BARBADOS', 'BB', 'BRB', 52),
  (21, 'BELARUS', 'BY', 'BLR', 112),
  (22, 'BELGIUM', 'BE', 'BEL', 56),
  (23, 'BELIZE', 'BZ', 'BLZ', 84),
  (24, 'BENIN', 'BJ', 'BEN', 204),
  (25, 'BERMUDA', 'BM', 'BMU', 60),
  (26, 'BHUTAN', 'BT', 'BTN', 64),
  (27, 'BOLIVIA', 'BO', 'BOL', 68),
  (28, 'BOSNIA AND HERZEGOWINA', 'BA', 'BIH', 70),
  (29, 'BOTSWANA', 'BW', 'BWA', 72),
  (30, 'BOUVET ISLAND', 'BV', 'BVT', 74),
  (31, 'BRAZIL', 'BR', 'BRA', 76),
  (32, 'BRITISH INDIAN OCEAN TERRITORY', 'IO', 'IOT', 86),
  (33, 'BRUNEI DARUSSALAM', 'BN', 'BRN', 96),
  (34, 'BULGARIA', 'BG', 'BGR', 100),
  (35, 'BURKINA FASO', 'BF', 'BFA', 854),
  (36, 'BURUNDI', 'BI', 'BDI', 108),
  (37, 'CAMBODIA', 'KH', 'KHM', 116),
  (38, 'CAMEROON', 'CM', 'CMR', 120),
  (39, 'CANADA', 'CA', 'CAN', 124),
  (40, 'CAPE VERDE', 'CV', 'CPV', 132),
  (41, 'CAYMAN ISLANDS', 'KY', 'CYM', 136),
  (42, 'CENTRAL AFRICAN REPUBLIC', 'CF', 'CAF', 140),
  (43, 'CHAD', 'TD', 'TCD', 148),
  (44, 'CHILE', 'CL', 'CHL', 152),
  (45, 'CHINA', 'CN', 'CHN', 156),
  (46, 'CHRISTMAS ISLAND', 'CX', 'CXR', 162),
  (47, 'COCOS (KEELING) ISLANDS', 'CC', 'CCK', 166),
  (48, 'COLOMBIA', 'CO', 'COL', 170),
  (49, 'COMOROS', 'KM', 'COM', 174),
  (50, 'CONGO, Democratic Republic of (was Zaire)', 'CD', 'COD', 180),
  (51, 'CONGO, Republic of', 'CG', 'COG', 178),
  (52, 'COOK ISLANDS', 'CK', 'COK', 184),
  (53, 'COSTA RICA', 'CR', 'CRI', 188),
  (54, 'COTE D''IVOIRE', 'CI', 'CIV', 384),
  (55, 'CROATIA (local name: Hrvatska)', 'HR', 'HRV', 191),
  (56, 'CUBA', 'CU', 'CUB', 192),
  (57, 'CYPRUS', 'CY', 'CYP', 196),
  (58, 'CZECH REPUBLICLIC', 'CZ', 'CZE', 203),
  (59, 'DENMARK', 'DK', 'DNK', 208),
  (60, 'DJIBOUTI', 'DJ', 'DJI', 262),
  (61, 'DOMINICA', 'DM', 'DMA', 212),
  (62, 'DOMINICAN REPUBLIC', 'DO', 'DOM', 214),
  (63, 'ECUADOR', 'EC', 'ECU', 218),
  (64, 'EGYPT', 'EG', 'EGY', 818),
  (65, 'EL SALVADOR', 'SV', 'SLV', 222),
  (66, 'EQUATORIAL GUINEA', 'GQ', 'GNQ', 226),
  (67, 'ERITREA', 'ER', 'ERI', 232),
  (68, 'ESTONIA', 'EE', 'EST', 233),
  (69, 'ETHIOPIA', 'ET', 'ETH', 231),
  (70, 'FALKLAND ISLANDS (MALVINAS)', 'FK', 'FLK', 238),
  (71, 'FAROE ISLANDS', 'FO', 'FRO', 234),
  (72, 'FIJI', 'FJ', 'FJI', 242),
  (73, 'FINLAND', 'FI', 'FIN', 246),
  (74, 'FRANCE', 'FR', 'FRA', 250),
  (75, 'FRENCH GUIANA', 'GF', 'GUF', 254),
  (76, 'FRENCH POLYNESIA', 'PF', 'PYF', 258),
  (77, 'FRENCH SOUTHERN TERRITORIES', 'TF', 'ATF', 260),
  (78, 'GABON', 'GA', 'GAB', 266),
  (79, 'GAMBIA', 'GM', 'GMB', 270),
  (80, 'GEORGIA', 'GE', 'GEO', 268),
  (81, 'GERMANY', 'DE', 'DEU', 276),
  (82, 'GHANA', 'GH', 'GHA', 288),
  (83, 'GIBRALTAR', 'GI', 'GIB', 292),
  (84, 'GREECE', 'GR', 'GRC', 300),
  (85, 'GREENLAND', 'GL', 'GRL', 304),
  (86, 'GRENADA', 'GD', 'GRD', 308),
  (87, 'GUADELOUPE', 'GP', 'GLP', 312),
  (88, 'GUAM', 'GU', 'GUM', 316),
  (89, 'GUATEMALA', 'GT', 'GTM', 320),
  (90, 'GUINEA', 'GN', 'GIN', 324),
  (91, 'GUINEA-BISSAU', 'GW', 'GNB', 624),
  (92, 'GUYANA', 'GY', 'GUY', 328),
  (93, 'HAITI', 'HT', 'HTI', 332),
  (94, 'HEARD AND MC DONALD ISLANDS', 'HM', 'HMD', 334),
  (95, 'HONDURAS', 'HN', 'HND', 340),
  (96, 'HONG KONG', 'HK', 'HKG', 344),
  (97, 'HUNGARY', 'HU', 'HUN', 348),
  (98, 'ICELAND', 'IS', 'ISL', 352),
  (99, 'INDIA', 'IN', 'IND', 356),
  (100, 'INDONESIA', 'ID', 'IDN', 360),
  (101, 'IRAN (ISLAMIC REPUBLIC OF)', 'IR', 'IRN', 364),
  (102, 'IRAQ', 'IQ', 'IRQ', 368),
  (103, 'IRELAND', 'IE', 'IRL', 372),
  (104, 'ISRAEL', 'IL', 'ISR', 376),
  (105, 'ITALY', 'IT', 'ITA', 380),
  (106, 'JAMAICA', 'JM', 'JAM', 388),
  (107, 'JAPAN', 'JP', 'JPN', 392),
  (108, 'JORDAN', 'JO', 'JOR', 400),
  (109, 'KAZAKHSTAN', 'KZ', 'KAZ', 398),
  (110, 'KENYA', 'KE', 'KEN', 404),
  (111, 'KIRIBATI', 'KI', 'KIR', 296),
  (112, 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'KP', 'PRK', 408),
  (113, 'KOREA, REPUBLIC OF', 'KR', 'KOR', 410),
  (114, 'KUWAIT', 'KW', 'KWT', 414),
  (115, 'KYRGYZSTAN', 'KG', 'KGZ', 417),
  (116, 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'LA', 'LAO', 418),
  (117, 'LATVIA', 'LV', 'LVA', 428),
  (118, 'LEBANON', 'LB', 'LBN', 422),
  (119, 'LESOTHO', 'LS', 'LSO', 426),
  (120, 'LIBERIA', 'LR', 'LBR', 430),
  (121, 'LIBYAN ARABJAMAHIRIYA', 'LY', 'LBY', 434),
  (122, 'LIECHTENSTEIN', 'LI', 'LIE', 438),
  (123, 'LITHUANIA', 'LT', 'LTU', 440),
  (124, 'LUXEMBOURG', 'LU', 'LUX', 442),
  (125, 'MACAU', 'MO', 'MAC', 446),
  (126, 'MACEDONIA,THE FORMER YUGOSLAV REPUBLIC OF', 'MK', 'MKD', 807),
  (127, 'MADAGASCAR', 'MG', 'MDG', 450),
  (128, 'MALAWI', 'MW', 'MWI', 454),
  (129, 'MALAYSIA', 'MY', 'MYS', 458),
  (130, 'MALDIVES', 'MV', 'MDV', 462),
  (131, 'MALI', 'ML', 'MLI', 466),
  (132, 'MALTA', 'MT', 'MLT', 470),
  (133, 'MARSHALL ISLANDS', 'MH', 'MHL', 584),
  (134, 'MARTINIQUE', 'MQ', 'MTQ', 474),
  (135, 'MAURITANIA', 'MR', 'MRT', 478),
  (136, 'MAURITIUS', 'MU', 'MUS', 480),
  (137, 'MAYOTTE', 'YT', 'MYT', 175),
  (138, 'MEXICO', 'MX', 'MEX', 484),
  (139, 'MICRONESIA,FEDERATED STATES OF', 'FM', 'FSM', 583),
  (140, 'MOLDOVA, REPUBLIC OF', 'MD', 'MDA', 498),
  (141, 'MONACO', 'MC', 'MCO', 492),
  (142, 'MONGOLIA', 'MN', 'MNG', 496),
  (143, 'MONTSERRAT', 'MS', 'MSR', 500),
  (144, 'MOROCCO', 'MA', 'MAR', 504),
  (145, 'MOZAMBIQUE', 'MZ', 'MOZ', 508),
  (146, 'MYANMAR', 'MM', 'MMR', 104),
  (147, 'NAMIBIA', 'NA', 'NAM', 516),
  (148, 'NAURU', 'NR', 'NRU', 520),
  (149, 'NEPAL', 'NP', 'NPL', 524),
  (150, 'NETHERLANDS', 'NL', 'NLD', 528),
  (151, 'NETHERLANDSANTILLES', 'AN', 'ANT', 530),
  (152, 'NEW CALEDONIA', 'NC', 'NCL', 540),
  (153, 'NEW ZEALAND', 'NZ', 'NZL', 554),
  (154, 'NICARAGUA', 'NI', 'NIC', 558),
  (155, 'NIGER', 'NE', 'NER', 562),
  (156, 'NIGERIA', 'NG', 'NGA', 566),
  (157, 'NIUE', 'NU', 'NIU', 570),
  (158, 'NORFOLK ISLAND', 'NF', 'NFK', 574),
  (159, 'NORTHERN MARIANA ISLANDS', 'MP', 'MNP', 580),
  (160, 'NORWAY', 'NO', 'NOR', 578),
  (161, 'OMAN', 'OM', 'OMN', 512),
  (162, 'PAKISTAN', 'PK', 'PAK', 586),
  (163, 'PALAU', 'PW', 'PLW', 585),
  (164, 'PALESTINIAN TERRITORY, Occupied', 'PS', 'PSE', 275),
  (165, 'PANAMA', 'PA', 'PAN', 591),
  (166, 'PAPUA NEW GUINEA', 'PG', 'PNG', 598),
  (167, 'PARAGUAY', 'PY', 'PRY', 600),
  (168, 'PERU', 'PE', 'PER', 604),
  (169, 'PHILIPPINES', 'PH', 'PHL', 608),
  (170, 'PITCAIRN', 'PN', 'PCN', 612),
  (171, 'POLAND', 'PL', 'POL', 616),
  (172, 'PORTUGAL', 'PT', 'PRT', 620),
  (173, 'PUERTO RICO', 'PR', 'PRI', 630),
  (174, 'QATAR', 'QA', 'QAT', 634),
  (175, 'REUNION', 'RE', 'REU', 638),
  (176, 'ROMANIA', 'RO', 'ROU', 642),
  (177, 'RUSSIAN FEDERATION', 'RU', 'RUS', 643),
  (178, 'RWANDA', 'RW', 'RWA', 646),
  (179, 'SAINT HELENA', 'SH', 'SHN', 654),
  (180, 'SAINT KITTS AND NEVIS', 'KN', 'KNA', 659),
  (181, 'SAINT LUCIA', 'LC', 'LCA', 662),
  (182, 'SAINT PIERRE AND MIQUELON', 'PM', 'SPM', 666),
  (183, 'SAINT VINCENT AND THE GRENADINES', 'VC', 'VCT', 670),
  (184, 'SAMOA', 'WS', 'WSM', 882),
  (185, 'SAN MARINO', 'SM', 'SMR', 674),
  (186, 'SAO TOME AND PRINCIPE', 'ST', 'STP', 678),
  (187, 'SAUDI ARABIA', 'SA', 'SAU', 682),
  (188, 'SENEGAL', 'SN', 'SEN', 686),
  (189, 'SERBIA AND MONTENEGRO', 'CS', 'SCG', 891),
  (190, 'SEYCHELLES', 'SC', 'SYC', 690),
  (191, 'SIERRA LEONE', 'SL', 'SLE', 694),
  (192, 'SINGAPORE', 'SG', 'SGP', 702),
  (193, 'SLOVAKIA', 'SK', 'SVK', 703),
  (194, 'SLOVENIA', 'SI', 'SVN', 705),
  (195, 'SOLOMON ISLANDS', 'SB', 'SLB', 90),
  (196, 'SOMALIA', 'SO', 'SOM', 706),
  (197, 'SOUTH AFRICA', 'ZA', 'ZAF', 710),
  (198, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'GS', 'SGS', 239),
  (199, 'SPAIN', 'ES', 'ESP', 724),
  (200, 'SRI LANKA', 'LK', 'LKA', 144),
  (201, 'SUDAN', 'SD', 'SDN', 736),
  (202, 'SURINAME', 'SR', 'SUR', 740),
  (203, 'SVALBARD AND JAN MAYEN ISLANDS', 'SJ', 'SJM', 744),
  (204, 'SWAZILAND', 'SZ', 'SWZ', 748),
  (205, 'SWEDEN', 'SE', 'SWE', 752),
  (206, 'SWITZERLAND', 'CH', 'CHE', 756),
  (207, 'SYRIAN ARAB REPUBLIC', 'SY', 'SYR', 760),
  (208, 'TAIWAN', 'TW', 'TWN', 158),
  (209, 'TAJIKISTAN', 'TJ', 'TJK', 762),
  (210, 'TANZANIA, UNITED REPUBLIC OF', 'TZ', 'TZA', 834),
  (211, 'THAILAND', 'TH', 'THA', 764),
  (212, 'TIMOR-LESTE', 'TL', 'TLS', 626),
  (213, 'TOGO', 'TG', 'TGO', 768),
  (214, 'TOKELAU', 'TK', 'TKL', 772),
  (215, 'TONGA', 'TO', 'TON', 776),
  (216, 'TRINIDAD AND TOBAGO', 'TT', 'TTO', 780),
  (217, 'TUNISIA', 'TN', 'TUN', 788),
  (218, 'TURKEY', 'TR', 'TUR', 792),
  (219, 'TURKMENISTAN', 'TM', 'TKM', 795),
  (220, 'TURKS AND CAICOS ISLANDS', 'TC', 'TCA', 796),
  (221, 'TUVALU', 'TV', 'TUV', 798),
  (222, 'UGANDA', 'UG', 'UGA', 800),
  (223, 'UKRAINE', 'UA', 'UKR', 804),
  (224, 'UNITED ARAB EMIRATES', 'AE', 'ARE', 784),
  (225, 'UNITED KINGDOM', 'GB', 'GBR', 826),
  (226, 'UNITED STATES', 'US', 'USA', 840),
  (227, 'UNITED STATES MINOR OUTLYING ISLANDS', 'UM', 'UMI', 581),
  (228, 'URUGUAY', 'UY', 'URY', 858),
  (229, 'UZBEKISTAN', 'UZ', 'UZB', 860),
  (230, 'VANUATU', 'VU', 'VUT', 548),
  (231, 'VATICAN CITY STATE (HOLY SEE)', 'VA', 'VAT', 336),
  (232, 'VENEZUELA', 'VE', 'VEN', 862),
  (233, 'VIET NAM', 'VN', 'VNM', 704),
  (234, 'VIRGIN ISLANDS (BRITISH)', 'VG', 'VGB', 92),
  (235, 'VIRGIN ISLANDS (U.S.)', 'VI', 'VIR', 850),
  (236, 'WALLIS AND FUTUNA ISLANDS', 'WF', 'WLF', 876),
  (237, 'WESTERN SAHARA', 'EH', 'ESH', 732),
  (238, 'YEMEN', 'YE', 'YEM', 887),
  (239, 'ZAMBIA', 'ZM', 'ZMB', 894),
  (240, 'ZIMBABWE', 'ZW', 'ZWE', 716);

-- Definition for index address_type_pkey (OID = 34477):
ALTER TABLE ONLY address_type
    ADD CONSTRAINT address_type_pkey PRIMARY KEY (address_type_cd);

-- Definition for index ethnic_group_pkey (OID = 34491):
ALTER TABLE ONLY ethnic_group
    ADD CONSTRAINT ethnic_group_pkey PRIMARY KEY (ethnic_group_cd);

-- Definition for index gender_pkey (OID = 34496):
ALTER TABLE ONLY gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (gender_cd);

-- Definition for index language_pkey (OID = 34506):
ALTER TABLE ONLY "language"
    ADD CONSTRAINT language_pkey PRIMARY KEY (language_cd);

-- Definition for index name_type_pkey (OID = 34511):
ALTER TABLE ONLY name_type
    ADD CONSTRAINT name_type_pkey PRIMARY KEY (name_type_cd);

-- Definition for index nationality_pkey (OID = 34516):
ALTER TABLE ONLY nationality
    ADD CONSTRAINT nationality_pkey PRIMARY KEY (nationality_cd);

-- Definition for index race_pkey (OID = 34539):
ALTER TABLE ONLY race
    ADD CONSTRAINT race_pkey PRIMARY KEY (race_cd);

-- Definition for index religion_pkey (OID = 34544):
ALTER TABLE ONLY religion
    ADD CONSTRAINT religion_pkey PRIMARY KEY (religion_cd);
    
ALTER TABLE ONLY phone_type
    ADD CONSTRAINT phone_type_pkey PRIMARY KEY (phone_type_cd);

ALTER TABLE ONLY country
    ADD CONSTRAINT country_id_pkey PRIMARY KEY (country_id);
