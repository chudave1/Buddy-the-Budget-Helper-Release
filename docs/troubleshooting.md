---
layout: default
title: Troubleshooting
---
# Troubleshooting Issues

What to do when something goes wrong.

## Restoring your database

If your data is corrupted or missing, restore from a backup. See [Taking Care of Your Data](taking-care-of-data.md) for backing up and restoring.

## Starting from scratch

If you want to reset and begin again, you can start from scratch (e.g. new database or cleared data). 

## Un-installing Buddy

Buddy is a Packaged Application (using WinUI 3). Packaged applicatiions have a predictable installation, update, and servicing model on Windows.  As you install and un-install Buddy, here are some things you should know:

	- Buddy installs into the Packages folder under your User directory (\users\xxx\AppData\Packages\yyy).   
		- Use the database location on the *About* menu to help you find the install location.
	- As a packaged application, un-installing it will remove everything including the database and backups.
		- Make sure you copy them elsewhere if you want themm saved.
	- Buddy remembers user values, like your windiow sizes and chart colors, in your applicatiion settings.  
		- Un-installing will delete your application settings.

You do not need to un-install to update Buddy to a later version.  

