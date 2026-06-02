INSERT INTO account
(id, last_update, account_name, account_type, description, default_category_id, refund_due_amount, refund_due_count)
VALUES(1, '2026-06-02 17:27:06.4058067', 'Citibank Visa', 3, 'Main credit card for various purchases', 5000, 0, 0);

INSERT INTO csvmapping
(account_id, last_update, description, transdate_column, payee_column, description_column, check_no_column, amount1_column, amount2_column, has_header, flip_sign, quote_char, delim_char, header, sample_data)
VALUES(1, '2026-06-02 17:20:49.5842038', 'Citibank import format', 2, 3, 4, -1, 5, 6, 1, 0, '"', ',', 'Status,Date,Payee,Description,Debit,Credit', 'Cleared,4/28/2026,8764 GREAT CLIPS,Haircut,11.99,');