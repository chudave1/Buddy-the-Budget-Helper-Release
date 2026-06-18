---
layout: default
title: SimpleFIN
---
# SimpleFIN Integration

## What is SimpleFIN
SimpleFIN is a third-party financial data interchange service that provides read-only access to your financial account data.  If you subscribe to it, Buddy can use it to directly access your monthly transactions without you having to sign onto your financial account and download a file each time.  It eliminates CSV files, making your data safer.

SimpleFIN uses security tokens to ensure you remain in control.  Security tokens are the way you give permission to Buddy to access your data, and you can use the SimpleFIN website to revoke that permission at any time.  Buddy never accesses your data without you in control.  It does not use any form of a background process (server) to access your data.  It simply retrieves the transaction data you ask for in lieu of using a CSV file.  

You don't have to use SimpleFIN for every account you define in Buddy.  In SimpleFIN, you control which financial accounts to access, and in Buddy you can still import a CSV file for any account.  


## Subscribing to SimpleFIN
You must subscribe to the SimpleFIN Bridge to securely share your financial account and transaction data with Buddy.  Currently the subscription costs $1.50 per month or $15 per year.  Use your web browser and follow these steps to subscribe, register your desired financial institutions, and provide access to Buddy:

1. Check that your desired financial institutions are supported: <https://beta-bridge.simplefin.org/search-institutions>
2. Create your account and sign-in: <https://beta-bridge.simplefin.org/auth/login>
3. Once you sign in to the **My Account** page, use the **New Connection** button to add your financial institutions.  This step will take you through the normal authentication process for that institution.
	- Note that by default all accounts within that institution are accessible, though many institutions give you the option of allowing only specific accounts. 
	- Later in the process, Buddy will also give you control of which accounts are accessed (see step 3 below).
4. On the **My Account** page, use the **New app connection** and add *Buddy the Budget Helper* (or any name you choose) as the app name and use the **Create Setup Token** button.  The **Setup Token Created** page will be displayed.  Use **Copy to clipboard**, as this token must be entered in Buddy.


## Setting Up SimpleFIN Integration
1. Now open Buddy and use the **Setup → Integrations → SimpleFIN** menu to display the **SimpleFIN Integration** window.
2. Paste the *Setup Token* from above into the window and use the **Connect** button.  Buddy will display the list of accounts you have defined as accessible through SimpleFIN.  
	- Note that Buddy will exchange your setup token with SimpleFIN for an access URL (a secure link) it will use to access your data.  See [SimpleFIN credential storage](#simplefin-credential-storage) for further details. 
	- Setup tokens can only be used once.  If you need another one, use the SimpleFIN **My Account** page to delete the *Buddy the Budget Helper* app and then add the app again.
	- If you want to disable Buddy's SimpleFIN access, use the SimpleFIN **My Account** page to delete the *Buddy the Budget Helper* app.  The access URL will no longer be valid.  Or simply use the **Delete Access URL** button on Buddy's **SimpleFIN Integration** window.
3. Assign your accounts. Select a SimpleFIN account and assign it to the corresponding account you defined in Buddy using the **Assign** button.  Only the assigned accounts will be able to import transactions using SimpleFIN.
4. Test your accounts.  Test importing your transactions using the **Test** button.  Note that the amounts are signed relative to the financial institution's point of view.  Positives are deposits and negatives are withdrawals.  Buddy will flip the signs on import.


## Using SimpleFIN Integration
Under the **Monthly Tasks** menu there are options to import transactions using CSV files (**Import Transactions**) or import using SimpleFIN (**SimpleFIN Import Transactions**).  You can use either approach.    

All transactions imported together form a single "batch" for that account. The date and time of import are kept so you can identify the batch. See [Working with Transactions](working-with-transactions.md) for further details.

## Using a Pass Phrase
A pass phrase further secures the access URL by essentially associating a password to it.  If used, you will have to supply the pass phrase every time Buddy imports your transactions.  A pass phrase may be useful if you share a computer with others and share the same Windows login.  Buddy does not persist your pass phrase. If you forget it, use **Delete Access URL** and go back to SimpleFIN and get a fresh setup token.


## SimpleFIN Credential Storage
After exchanging a setup token, the SimpleFIN access URL is saved in the local machine's application data settings (ApplicationData.LocalSettings) on your computer.  The access URL is not stored in the database and is not affected by database restores. 

- If no pass phrase is set, the access URL is protected with Windows DPAPI (current-user scope).
- If a pass phrase is set, the URL is encrypted with AES-256-GCM. The pass phrase is not stored.
- Buddy is an MSIX-packaged app; this data is stored in the package's isolated settings store and is removed when the app is uninstalled.

## Disclaimer

*Buddy the Budget Helper* is published by David A Chu Consulting. This integration is optional. The points below apply if you choose to use SimpleFIN with Buddy.

- **No affiliation.** *Buddy the Budget Helper* is not affiliated with, endorsed by, or sponsored by SimpleFIN or its operators. SimpleFIN is a separate third-party service with its own website, subscription terms, and privacy practices.
- **No referral revenue.** We do not receive payment, commissions, or other compensation from SimpleFIN if you subscribe or use the SimpleFIN Bridge. Any fees you pay go directly to SimpleFIN under their pricing and billing terms.
- **Your choice and your risk.** You decide whether to connect financial accounts through SimpleFIN. You use this integration at your own risk. We are not responsible for unauthorized access to your data, loss of data, incorrect or incomplete transaction data, service outages, changes to SimpleFIN's service, or any other harm arising from your use of SimpleFIN or this integration.
- **Protect your credentials.** You are responsible for safeguarding your SimpleFIN setup tokens, access URLs, and any pass phrase you set in Buddy. Do not share them with others. Revoke access through SimpleFIN or use **Delete Access URL** in Buddy if you suspect your credentials have been compromised.
- **Not financial advice.** Buddy is a personal budgeting tool. It does not provide financial, tax, or investment advice. Verify imported transactions and balances against your financial institution's records.
- **No guarantees.** We do not guarantee that SimpleFIN will remain available, support your institution, or return accurate or complete data. Institution support, pricing, and SimpleFIN features may change without notice.

For how Buddy handles data on your device, see the [Privacy Policy](privacy-policy.md).
