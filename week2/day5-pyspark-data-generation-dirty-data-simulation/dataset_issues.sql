# Dataset Issues & Data Quality Problems

This generated dataset intentionally contains multiple real-world data problems for ETL and Data Engineering practice.

---

# NULL Values

NULL values are present in:

- amount
- city

These simulate incomplete transactional records.

---

# Duplicate Records

Duplicate order IDs are intentionally generated.

Example:
- Same order_id appearing multiple times

Used for:
- deduplication practice
- Delta Lake MERGE scenarios

---

# Negative Values

Negative amounts are included to simulate:

- invalid transactions
- refund issues
- corrupted sales data

---

# Updated Records

Same order_id may appear with:

- different dates
- modified values

This simulates CDC (Change Data Capture) scenarios.

---

# Real-Time Usage

This dataset can be used for:

- Bronze → Silver transformations
- Data cleaning pipelines
- Delta Lake MERGE operations
- ETL testing
- Data quality validation
