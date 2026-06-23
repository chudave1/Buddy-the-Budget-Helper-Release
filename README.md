# Buddy-the-Budget-Helper-Release
Buddy the Budget Helper, a Windows (WinUI) packaged application for managing your budget.

## What Does Buddy the Budget Helper Do?
- Buddy uses the envelope style of budgeting, you define your spending categories and your planned spend amount (budget) for that category.  You choose the order in which categories are displayed.

- Buddy helps you track actual spending against your planned budget. It is designed to import transactions from your accounts, help you assign them to the right categories, and summarize transactions into totals by year and month.

- Buddy works at the individual transaction level. You decide how every transaction affects its category and budget.  A single transaction can be assigned to multiple categories.

## What Makes It Special

- Buddy uses a flexible, spreadsheet-like approach to show budget versus actual amounts by year and month. You choose the order in which categories are displayed.

- Buddy supports multiple levels of category roll-ups. For example, "Car Payment", "Car Insurance", and "Car Registration" can roll up to "Total Car Expenses", which can roll up to "Total Living Expenses".

- Buddy speeds things up by automatically suggesting categories based on transaction history, payee nanme, and the account's default category.

- Buddy is reconcilable and accurate to the penny.
  
- Buddy uses the SQLite database to store your data.  This means your data is accessible outside the application for custom analysis or reporting.


## 🔽 Download

👉 https://apps.microsoft.com/detail/9p8nnjr4m0wb?hl=en-US&gl=US

## 📖 Documentation and Screenshots

👉 https://chudave1.github.io/Buddy-the-Budget-Helper-Release/


## 📜 Release History

Application Versions
- Version 1.5.0 - First Microsoft Store Release (never published)
- Version 1.5.1 - Adds option to start with a fresh database or restore the sample database.
- Version 1.6.0 - Generates sample database if requested on first use (no restore needed).  Adds SimpleFIN integration.  Improves transaction split input.

Database Versions
- Version 2.1.1 - Pre-Microsoft Store Version 
- Version 2.1.2 - Changes to SummaryCross view
- Version 2.2.2 - Changes to Account table for SimpleFIN integration.  Application Version 1.6.0 will migrate above schema versions to 2.2.2 

