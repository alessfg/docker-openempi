--Function: public.removeallpersons(Output rowsaffected integer)
--DROP FUNCTION public.removeallpersons(OUT rowsaffected integer);

CREATE OR REPLACE FUNCTION public.removepersonbypersonid(IN personid integer, OUT rowsaffected integer)
AS
$$
DECLARE
  admin_id INTEGER;
  foundpersonid INTEGER;
  rows_affected INTEGER;
  personrow person%ROWTYPE;
  dateVoided DATE;
BEGIN
  rowsaffected := 0;
  SELECT au.id FROM app_user au INTO admin_id WHERE au.username = 'admin';
  SELECT CURRENT_DATE INTO dateVoided;
  RAISE NOTICE 'Looking for person with id "%"', personid;
  FOR personrow IN
    SELECT * FROM person WHERE person_id = personid
  LOOP
    foundpersonid := personrow.person_id;
    RAISE NOTICE 'Found person row named % %, will delete records with person_id %', personrow.given_name, personrow.family_name, foundpersonid;
    DELETE FROM person_identifier WHERE person_id = foundpersonid;
    DELETE FROM audit_event WHERE ref_person_id = foundpersonid OR alt_ref_person_id = foundpersonid;
    DELETE FROM person_link WHERE rh_person_id = foundpersonid OR lh_person_id = foundpersonid;
    DELETE FROM person_link_review WHERE rh_person_id = foundpersonid OR lh_person_id = foundpersonid;
    DELETE FROM person WHERE person_id = foundpersonid;
    GET DIAGNOSTICS rows_affected = ROW_COUNT;
    rowsaffected := rowsaffected + rows_affected;
  END LOOP;
  RAISE NOTICE 'Remove of persons affected % rows', rowsaffected;
END
$$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
COST 100;

ALTER FUNCTION public.removepersonbypersonid(IN personid integer, OUT rowsaffected integer) OWNER TO openempi;
