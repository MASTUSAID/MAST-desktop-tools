# MAST Desktop Tools
This is a generic home for miscellaneous MAST scripts and tools to assist with using MAST on a desktop GIS tool. We currently recommend connecting to MAST with QGIS or ArcGIS Desktop. Contact your MAST admin for connection details.

This repository contains:
* *Create User1 for Viewer Role.sql* - Edit and run this script to add a database user who can only view tables
* *Create User2 for Editor Role.sql* - Edit and run this script to add a database user who can view and edit all tables
* *Create User3 for Specific Fields Editor Role.sql* - Edit and run this script to add a database user who can view all tables and edit only some tables
Each of these scripts has placeholders for the username, password, and table names. Edit this as appropriate.

The final file is *Database Trigger to Prevent Edits for Approved Parcels.sql*. Run this script to load a new trigger into the database that will lock parcels from future editing once they have been marked as approved. This applies to all parcels and all permission levels without exceptions.
