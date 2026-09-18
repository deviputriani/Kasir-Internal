FACETHEHTIC KASIR PORTAL — ROLE & PERMISSION FINAL

INSTALL
1. Extract directly to D:\FACETHEHTIC_KASIR_PORTAL
2. Ensure MySQL/XAMPP is running.
3. Fresh database: import database/schema.sql in phpMyAdmin.
4. Existing database: npm install, then npm run seed-demo.
5. npm start
6. Open http://localhost:3000

DEMO LOGIN
bos / password
adminpusat / password
admincabang1 / password
pegawai1 / password

ROLE PERMISSIONS
BOS
- Read-only for business data: dashboard, products, stock, transactions/history, kasbon, customers, branches, reports, settings.
- Customer: Detail + Cetak only.
- Kasbon: Detail + Cetak/WhatsApp only; NO payment button.
- No transaction menu.
- Employee: ADD and EDIT only (including password/status/role/branch). No employee deletion endpoint.

ADMIN PUSAT
- Can create/edit/deactivate master products, brands, categories.
- Can adjust stock for ALL branches.
- Can create/edit/delete transactions for ALL branches.
- Can create/edit/delete customers across branches.
- Can add/edit branches.
- Can record kasbon payments across branches.
- Can edit system settings.
- Cannot manage employee accounts.

ADMIN CABANG
- Data changes are limited to own branch.
- Can adjust own branch stock.
- Can create/edit/delete own-branch transactions.
- Can create/edit/delete own-branch customers.
- Can record payments for own-branch kasbon.
- Product master remains read-only; master product/brand/category is controlled centrally.
- Employee page is view-only.

PEGAWAI
- Cashier-focused access for own branch.
- Can create transactions and manage customer data according to branch scope.
- Product and stock are view-only.

SECURITY
The server enforces these permissions in the API, not only in the UI. Direct API calls are also checked by role and branch. This prevents a user from bypassing hidden buttons by manually calling an endpoint.
