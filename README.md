# Cryptoverse_Project

![image](https://github.com/ChidimmaIdika/Cryptoverse_Project/assets/137975543/8be403b9-b0a2-45bf-95a7-94c575c27a49)

---

*This **Data Engineering** project involves analyzing cryptocurrency data, and as a data engineer, I have undertaken various tasks to accomplish this. I've used PostgreSQL to set up a database, imported relevant data, and executed SQL queries to answer crucial business questions.*

---

## Table of Contents
- [Instructions](#instructions)
    - [Task 1 - Setting up the database](#task-1---setting-up-the-database)
    - [Task 2 - Answering business questions](#task-2---answering-business-questions)
        - [Question 1](#question-1)
        - [Question 2](#question-2)
        - [Question 3](#question-3)
        - [Question 4](#question-4)
    - [Task 3 - Preparing the results for submission](#task-3---preparing-the-results-for-submission)
- [Solution](#solution)
- [Usage](#usage)


## Instructions
You have been tasked with analyzing data about crypto currencies. As a data engineer, your manager has shared some csv files with you containing information needed to answer some questions for your company executives. Load and analyse the data to help answer relevant business questions.

### Task 1 - Setting up the database

- Created a user named `cryptoverse_admin` with `CREATEDB` and `CREATEROLE` attributes.
- Established a database named `metaverse` using the `cryptoverse_admin` user.
- Created a schema called `raw` within the `metaverse` database.
- Imported data into the `raw` schema, including the `members`, `prices`, and `transactions` tables using DBeaver.

### Task 2 - Answering business questions

#### Question 1
I answered the question: "How many buy and sell transactions are there for Bitcoin?"    
The result includes two columns: `txn_type` and `transaction_count`.

#### Question 2
I calculated buy and sell metrics for Bitcoin for each year. This involved the total transaction count, total quantity, and average quantity.    
The result provides five columns: `txn_year`, `txn_type`, `txn_count`, `total_quantity`, and `average_quantity`.

#### Question 3
I determined the monthly total quantity purchased and sold for Ethereum in 2020.    
The result consists of three columns: `calendar_month`, `buy_quantity`, and `sell_quantity`.

#### Question 4
I identified the top three members with the most Bitcoin quantity.    
The result includes two columns: `first_name` and `total_quantity`.

### Task 3 - Preparing the results for submission

I have organized the SQL statements for each question into a Python script for easy access and reference.

## Solution

You can find the SQL statements and the Python script in this repository for your reference.

- [SQL Statements](https://github.com/ChidimmaIdika/Cryptoverse_Project/blob/Chidimma/Cryptoverse%20Project.sql)
- [Python Script](https://github.com/ChidimmaIdika/Cryptoverse_Project/blob/Chidimma/Chidimma_Idika.py)

## Usage

Feel free to use the provided SQL statements and Python script as a resource for similar projects or to answer cryptocurrency-related questions.    
If you have any questions or suggestions, please don't hesitate to reach out.

**Thank you for reading!**

