# Week 2 - Day 5  
# PySpark Data Generation & Dirty Data Simulation

## Overview

This module focuses on generating large-scale sample datasets using PySpark.

The generated dataset simulates real-world e-commerce sales data containing:
- duplicate records
- NULL values
- negative values
- data updates

This type of dataset is commonly used in:
- Data Engineering
- ETL pipelines
- Medallion Architecture
- Data Cleaning practice
- Delta Lake processing

---

# Objectives

- Generate large datasets using PySpark
- Understand dirty data scenarios
- Simulate real-world data problems
- Create CSV files for Bronze Layer ingestion
- Practice scalable data generation

---

# Topics Covered

## PySpark Basics
- SparkSession
- DataFrame creation
- Randomized data generation

## Dirty Data Simulation
- NULL values
- Duplicate records
- Negative values
- Updated records

## File Handling
- CSV generation
- Header options
- Overwrite mode

---

# Skills Practiced

- PySpark scripting
- Random data generation
- Large-scale dataset creation
- Data quality simulation
- Bronze layer preparation

---

# Files Included

| File Name | Description |
|---|---|
| data_generation.py | PySpark script for generating 20,000 records |
| dataset_issues.md | Explanation of data quality issues |
| sample_output.md | Sample generated output preview |

---

# Dataset Features

- 20,000 generated records
- Duplicate order IDs
- NULL city values
- NULL amount values
- Negative sales values
- Randomized customer activity

---

# Learning Outcome

After completing this module, you will be able to:

- Generate realistic datasets using PySpark
- Simulate production-level dirty data
- Prepare raw datasets for ETL pipelines
- Understand common data engineering issues

---

# Platform Used

- PySpark
- Databricks
- DBFS / CSV Storage

---

# Author

**Preneetha Yedida**  
Databricks SQL Training Repository
