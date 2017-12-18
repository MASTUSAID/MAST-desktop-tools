
--Database trigger which will prevent approved parcel edits.

CREATE or replace FUNCTION check_id_change() 
RETURNS TRIGGER AS 
$BODY$
    BEGIN
    if (old.landid in(Select ld.landid from la_spatialunit_land LD Inner join la_ext_personlandmapping PL on 
LD.landid = PL.landid inner join la_ext_transactiondetails TR on PL.transactionid = TR.transactionid
inner Join la_right_claimtype LC on LD.claimtypeid=LC.claimtypeid inner Join
la_ext_applicationstatus la on la.applicationstatusid = TR.applicationstatusid
where la.applicationstatus_en='Approved')) 
         THEN
            RAISE EXCEPTION 'cannot change status';
    END IF;
        RETURN NEW;
    END;
    $BODY$
    language plpgsql;


CREATE TRIGGER client_update_trigger BEFORE UPDATE ON la_spatialunit_land FOR EACH ROW
     EXECUTE PROCEDURE check_id_change();


