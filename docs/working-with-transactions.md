---
layout: default
title: Transactions
---
# Working with Transactions
How to bring transactions in, categorize them, and summarize them for your budget.

## Monthly Tasks Menu

A typical workflow each month: import transactions, review and categorize them, then summarize them so they appear on your main budget view.
Use the **Monthly Tasks** menu to perform these tasks.

### Import Transactions

Download transaction data from your account's web site and import it into Buddy. Use the **Preview** button to check the data and confirm the **Import Mapping** you defined for this account is correct. If the **Import Mapping** has **Flip Sign** enabled, transaction amounts will be reversed.

All transactions imported together form a single "batch" for that account. The date and time of import are kept so you can identify the batch.

Transactions are imported into a staging area first. The **Delete previous transactions** option clears the staging area before import. Use it when you want to re-import (for example, after fixing a mapping). That way you avoid multiple batches for the same account and possible duplicates.

### Reconcile and Categorize Transactions

After importing, review each transaction and assign it to a category (or split it across multiple categories). First, select the account and batch to reconcile. Then choose the year and month to apply. The whole batch applies to one budget year and month.

#### Reconcile Button

Use the **Reconcile** button to open a spreadsheet-like grid of transactions. At the top you'll see control totals that you use to "balance" the batch. They start in red and turn green when the batch balances. What each total means:

- **Imported** — Gross (absolute) total of all transaction amounts in the batch
- **Uncategorized** — Gross total of amounts not yet categorized
- **Categorized** — Gross total of amounts that are categorized
- **Returned** — Gross total of return amounts that don't need categorization
- **Deleted** — Gross total of amounts being deleted (not posted)
- **Out of Balance** — Computed as: Imported − (Categorized + Returned + Deleted)

Buddy pre-assigns a category when it can. If a previous month had a transaction for the same payee, Buddy uses that category. If the account has a *Posting*-level *Default Category*, Buddy uses that next.

#### Delete Button

You can delete transactions that don't belong in your budget. That's useful when it's easier to remove them in Buddy than to filter them out on the account's website. Deleted transactions are not posted. A "trash can" icon marks deleted rows in the grid.  For example, you might have account payments in your batch.  Since we capture all the transactions, the payments don't really affect our budget.  So you might delete them.

#### Return Button

This button handles two cases: *Return of Goods* and *Receipt of Refund*.

**Return of Goods** — You can adjust the transaction amount to reflect returning an item. For example, you bought two items at Home Depot for $100.00 and returned one for $20.00. You enter a **Refund amount due** for this transaction so $80.00 still needs to be categorized. Buddy treats it as *Return of Goods* when the transaction amount is positive (debit).

**Receipt of Refund** — When the amount is negative (credit), Buddy treats it as money you actually received back. Buddy tracks that *Return of Goods* and *Receipt of Refund* can happen in different months and keeps track of outstanding refunds per account.

The **Unreturn the transaction** option resets the transaction to its original imported amount. A "return" icon marks returned transactions in the grid.

#### Categorize Button

This is the main action for each row. You can also double-click in the *Category* column as a shortcut.  The *Posting* column has a filter (…). To see only uncategorized transactions, filter on *Posting Amount* = 0.

You'll see *Available Categories* (the *Posting*-level categories you can assign) and *Assigned Categories* (your choices). Use the Buttons or Double-click a category to move it between the two. The *Categorized / Remaining* total at the top right shows how much is categorized so far and how much is left. Usually those add up to the *Amount*, unless *Return of Goods* applies to that transaction.

When you assign multiple categories, Buddy splits the transaction amount equally across them. Use *Allocate Amounts Unequally* to enter specific amounts per category. Example: a Costco transaction for $1,080 — $800 for a TV and $280 for food. In many states the TV is taxed and food isn't. For "Big Purchases" you might set the allocated amount to $800 and use the **Taxable** option so Buddy computes sales tax on the TV (e.g., $80). Buddy then shows *Net Allocation* $880 for Big Purchases and the remaining $200 for Food.

When you assign a single category and there are other transactions in the batch for the same payee, Buddy can show **Apply this category to all other transactions**. If you check it, Buddy applies that category to those transactions too.

#### Post Batch

When your batch balances, meaning all the transactions in your batch have been categorized, marked as being returned, or been deleted; the *Post Batch* button will be enabled.  

Post the batch when you are ready to have it permanently affect your budget.  Note that the batch will be automatically deleted after it's posted.

Posted batches can not be reversed in their entirety, though you can correct individual transactions.   *See Main Window for details.*     

#### Delete Batch

Use when you want to start all over.  Perhaps you imported into the wrong account or just want to start again.  

## Summarizing Transactions

Once transactions are categorized, summarize them so they roll up into your budget view on the main window. Use **Tasks → Summarize Transactions to Budget**.

This process totals all transactions for each *Posting*-level category by the budget month you posted to, then rolls the data up into the sub-total, intermediate, and final categories you defined.

Usually you run this after posting all batches for the month. You can run **Summarize Transactions** at any time; it will re-summarize all posted transactions for the month.
