---
layout: default
title: Getting Started
---
# Getting Started
Here's how to set up *Buddy the Budget Helper*.

## How to Get Started
Follow these steps to define everything before you import your first set of transactions:

1. **Define your accounts** — Add each bank or credit card account you want to track. Use **Setup → Accounts**. You don't have to enter the *Default Category* yet; wait until you have your categories defined. Use the *Edit Import Mapping* button to define the CSV file format this account uses for its download.

2. **Define your categories** — List the categories you want to track and the order in which you want them to appear (page and line). Use the template link below to help you define them. Set the order in which you want them to appear: add a *Header* category to group them and a *Sub-total* category for the group total. Then define how these groups roll up to the various *Intermediate* and *Final* category totals you want. You can save this template as a CSV file and import it into Buddy, or enter your categories by hand.

3. **Set the default category for an account** — This feature speeds up assigning categories to imported transactions for that account. For example, if you only use a credit card for "gas", assign the "gas" category as the default. The default category can also be a *Sub-total* type; Buddy will then show the categories in that group first, making assignment easier. For example, if you only use a credit card for "living expenses", Buddy will show the "food", "gas", and "entertainment" categories first.

4. **Define your budgets** — With your categories defined, go to **Setup → Budgets** and use **Create Excel Template**. This creates a CSV file (editable in any spreadsheet program) where you can add your budget amounts based on your defined categories, and then import them.  Note how you assign budget amounts to total type categories as well.  They don't need to be just to total of the child categories, you can add some contingency as well.    

5. **Back up your database** — With setup complete, back up your database. See **File → Backup**.

You are now ready to import transactions.

## Setup Functions
Use the **Setup** menu to create and edit the building blocks of your budget.

### Accounts
Manage your accounts (e.g., checking, savings, credit cards). Add, edit, or remove accounts here. You cannot remove an account that has any activity. This is where you define the CSV file format you download from this account. Each account can have only one format.  If you provide the sample header line for the file. Buddy will validate the file format when you import the transactions for that account.

### Categories
Manage your categories and their types (header, posting, totals). Build the category hierarchy and display page structure. You will typically import your initial categories; this is where you add new ones.

### Budgets
Manage your budget amounts by category and year. Create or edit budget rows. You will typically use the template process to create your initial budget amounts; this is where you change amounts or add new budgets.

## Import Functions
Use the **Import** menu to bring in categories or budget data from files instead of typing everything by hand.

### Categories
Import category definitions from a CSV file created using the template below. Choose the file to import first, then the mapping name you defined in **Setup → Categories**.  Use the **Delete** option if there was an error in your previous import and you want to start again.

### Budgets
Import yearly or monthly budget amounts from a CSV file.  Use **Setup → Budget → Create Excel Template** to create a template specific to your categories.  Choose the file to import first, then the mapping name you defined in **Setup → Budgets**.  Use the **Delete** option if there was an error in your previous import and you want to start again.

### History
If you are starting Buddy in the middle of the year and don't want to load all the tramsactions for the previous months, you can use **Import History** to load just the summary data up to the month you want to start loading transactions.  In this case, use the **Import History** option to also load your full year budget amounts, rather than the **Import Yearly Budget** option.

### Templates
* [Define and import categories](https://github.com/chudave1/Buddy-the-Budget-Helper-Release/blob/main/templates/Category_Import_Template.csv)

## Things to Know
- As you use Buddy for the first time, size the application windows as you desire, Buddy will use that window size until it's changed again.
- Application windows that are grids, have "..." indicators in the column headers to show they are sortable and filterable.  Click on the column header to sort or apply a filter.
