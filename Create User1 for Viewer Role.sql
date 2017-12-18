-- Create new user “user1”
Create user user1 login password ‘pgsql@123’;

--Grant user for connecting to database
Grant Connect on database LTS_LADM to user1;


--Grant for viewing all object in particular schema
Grant select on all tables in schema public to user1;

