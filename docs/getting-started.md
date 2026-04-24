# Getting Started

Here's how to set up Buddy the Budget Helper.

## How to Get Started

Follow these steps to define everything before you import your first set of transactions:

1. **Define your accounts** — Add each bank or credit account you want to track. Use **Setup → Accounts**. You don't have to enter the *Default Category* yet; wait until you have your categories defined. Use the *Edit Import Mapping* button to define the CSV file format this account uses for its download.

2. **Define your categories** — List the categories you want to track and the order in which you want them to appear (page and line). The installation includes an **Excel Category Template** that can help you define them. Set the order in which you want them to appear: add a *Header* category to group them and a *Sub-total* category for the group total. Then define how these groups roll up to the various *Intermediate* and *Final* category totals you want. You can save this template as a CSV file and import it into Buddy, or enter categories by hand.

3. **Set the default category for an account** — This feature speeds up assigning categories to imported transactions for that account. For example, if you only use a credit card for "gas", assign the "gas" category as the default. The default category can be a *Sub-total* type; Buddy will then show the categories in that group first, making assignment easier. For example, if you only use a credit card for "living expenses", Buddy will show the "food", "gas", and "entertainment" categories first.

4. **Define your budgets** — With your categories defined, go to **Setup → Budgets** and use **Create Excel Template**. This creates a CSV file (editable in Excel) where you can add your budget amounts and then import them.

5. **Back up your database** — With setup complete, back up your database. See **File → Backup**.

You are now ready to import transactions.

## Setup Functions

Use the **Setup** menu to create and edit the building blocks of your budget.

### Accounts

Manage your accounts (e.g., checking, savings, credit cards). Add, edit, or remove accounts here. You cannot remove an account that has any activity. This is where you define the CSV file format you download from this account. Each account can have only one format.

### Categories

Manage your categories and their types (header, posting, totals). Build the category hierarchy and display page structure. You will typically import your initial categories; this is where you add new ones.

### Budgets

Manage your budget amounts by category and year. Create or edit budget rows. You will typically use the template process to create your initial budget amounts; this is where you change amounts or add new budgets.

## Import Functions

Use the **Import** menu to bring in categories or budget data from files instead of typing everything by hand.

### Categories

Import category definitions from a CSV file. Choose the file to import first, then the mapping name you defined in **Setup → Categories**.

### Budgets

Import yearly or monthly budget amounts from a CSV file. Choose the file to import first, then the mapping name you defined in **Setup → Budgets**.
