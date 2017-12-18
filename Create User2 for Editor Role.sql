--Create new user “user2”
Create user user2 login password ‘pgsql@123’;

--Grant user for connecting to database
Grant Connect on database LTS_LADM to user2;

-- Grant for viewing all object in particular schema
Grant select on all tables in schema public to user2;

--Grant for updating all fields of particular table

Grant update on all tables in schema public to user2;