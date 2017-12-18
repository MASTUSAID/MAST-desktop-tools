--Create new user “user3”
Create user user3 login password ‘pgsql@123’;

--Grant user for connecting to database

Grant Connect on database LTS_LADM to user3;

-- Grant for viewing all object in particular schema

Grant select on all tables in schema public to user3;

-- Grant for updating only geometry field of particular table

Grant update (geometry) on la_spatialunit_land to user3;