# Importing Historical Data

You can import previous years of summary data using a CSV file you generate from your source of historical data.
Importing historical data allows current year to previous year comparisons in both the main window and budget dashboard.

## Preparing your historical data for import

The historical data import format is one row per current category for a given historical year:
- For posting level categories with a monthly budget:
	- Supply the yearly and monthly budget, plus the actual amounts for January through December.
- For posting level categories with a yearly budget:	
	- Supply the yearly budget, plus the actual amount for the year.
- For parent categories (types sub-total, intermediate and final):
	- Supply the yearly and monthly budget only.  The actual amounts will roll-up from the posting level categories.  
- You can add a comment that will show in the **Budget List**. 

## How to Import Historical Data

- First use *Backup Database* to make sure you have a current backup of your data.  See [Taking Care of Your Data](taking-care-of-data.md).

- Prepare your historical data.  
	- Gather your historical data into Excel or a similiar spreadsheet program.  The installation includes an **Excel History Import Template** that can help you.      
	- Make sure the categories match your existing (current year values).
	- Save the spreadsheet as a CSV file.      
	- You can have multiple years in the same CSV file. 
	
- Use the *Import History* menu option under the *Import* menu.
	- What does the "Delete existing history" option do? 
		- This option deletes the existing budgets and summary data for any years contained within the input file.

- The main window will refresh and allow you to select any historical years you added.
- The historical data will be available for comparison on the dashboard.

