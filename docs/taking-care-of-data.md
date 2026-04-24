---
layout: default
title: Your Data
---
# Taking Care of Your Data

How Buddy stores your data and how to back it up and restore it.

## Use of a database

Buddy stores your accounts, categories, budgets, and transactions in a local database. 

Buddy will automatically create the database upon first use. 


## Backing up your database

Regular backups protect you from data loss. Use the **Backup Database** option (from the File menu) to save a copy of your database.

Add a descriptive comment to you backup, so you will know it's contents if ever required.

Take backups at the following times:

	- After you have finished setting up your accounts, categories and budgets.
	- At the end of each budget month, aka budget totals for that month are final.
	- At the end of the budget year, aka budget totals for that year are final.
	- Whenever you feel you don't want to lose work.

## Restoring a database

If you need to recover from a backup, use this process to replace the current database with a previous backup.

	1. Backup your current database.  Be sure to add a note like "Last backup before restore for ..." to the backup.
	2. Use **View Backups** (from the File menu) and note the exact backup (by filename) you want.
	3. Use **About** (from the Help menu) and note the *Database path*.  This is where the database resides. 
	3. Close Buddy (the application).
	4. Using Windows File Explorer navigate to to the database path.  
		- You should see BuddyBudgetHub.db which is the current database. 
		- You should see the backup databases named with a date and time stamp, like BuddyBudgetHub_Backup_260312175729.db.
		- You should see BuddyBudgetHub_Backups.json which is where each backup is logged.  
	5. Delete BuddyBudgetHub.db (or move elsewhere).  Then rename your selected backup database to BuddyBudgetHub.db.
	6. Open Buddy (the application) and you should see your backed up data.

Buddy keeps track of the database version to ensure that the database remains compatible with the application.  

	- If you restore an older version of the database, Buddy will update it, if he can do so without impacting your existing data.
		- You can see the database version in the *View Backups* window.
	- If you install a new version of Buddy, Buddy will update your database to support the new application features.
	- If Buddy can't update your database, you will get a message that the database is incompatible and you will need to restore a compatible backup, start with a new database, or fix it with an external SQLite tool.

## Starting with a new database

If you need to start new (empty) database, use this process to create a database.

	1. Backup your current database. Be sure to add a note like "Last backup before new database created" to the backup.
	2. Use **About** (from the Help menu) and note the *Database path*.
	3. Close Buddy (the application).
	4. Using Windows File Explorer navigate to to the database path.  
		- You should see BuddyBudgetHub.db which is the current database. 
	5. Delete BuddyBudgetHub.db (or move elsewhere).  
	6. Open Buddy (the application) and you should see an empty database.

## Externally accessing Buddy's database

### Buddy uses a widely used SQL database called SQLite.  A variety of tools support accessing it's data.  

- You will need to provide the database path (from Help/About) to these tools so they can establish a connection.

- The database name is BuddyBudgetHub.db.

- Buddy's database schema is Copyright (c) 2026 David A Chu.

## Using SQL to access or correct your database

For advanced users, you can connect directly to Buddy's database with any SQLite client program, for example "DB Browser", "DBeaver" or "Visual Studio Code".   Use with care and only after backing up. 

### Tables and what they do

Understanding the main tables helps when querying your data or writing corrective SQL.
- account - Definitions for all the accounts.
- budget - Yearly and monthly budget amounts by budget year, page and row.  This table drives the main window.
- category - Definitions for all the categories.
- comment_log - Comments are stored here.
- staging - Staging table where transactions are imported to.
- summary - Summary table where posting level transactions are summarized by budget year, budget month and category.
- trans - Posted transactions. Details of how each transaction was posted to a category.
- trip - Transaction reconciliation header table. Holds the status and totals for each transaction batch. 
- twip - Transaction reconciliation detail table.  Holds the detail transactions as they are being reconciled.  Deleted after the transaction batch is posted. 
- version - Database version information.  Used to ensure database compatibility with the application.
- summary_cross (view) - A view that performs the rollup of the posting level categories into their parent categories.  This is where the main window data comes from.
- flattened_detail (view) - A view that flattens the detail transactions for easier reporting.  This is where the detail transaction window gets its data from.
