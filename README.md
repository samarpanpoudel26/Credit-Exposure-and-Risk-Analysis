💳 Credit Exposure Analysis Dashboard
📌 Project Overview

This project focuses on analyzing credit card exposure and security indicators using customer-level card data.
The goal is to move beyond raw records and transform them into actionable insights that help identify potential risk areas, even when no confirmed fraud or dark web exposure exists.

The project follows a complete end-to-end data analytics workflow:

Data cleaning & feature engineering

SQL-based analysis

Business-focused dashboarding in Power BI

🎯 Objectives

Analyze customer credit exposure across card types and brands

Evaluate security indicators such as PIN age and chip usage

Identify potential risk patterns based on credit limits and security behavior

Present insights in a clear, executive-ready Power BI dashboard

🗂️ Dataset Description

The dataset contains anonymized credit card and client information with the following key fields:

id, client_id

card_brand, card_type

card_number, expires, cvv

has_chip

num_cards_issued

credit_limit

acct_open_date

year_pin_last_changed

card_on_dark_web

⚠️ Important Note:
The dataset contains no confirmed cases of cards exposed on the dark web.
This project therefore focuses on credit exposure and preventive risk analysis, not incident-based fraud detection.

🧹 Data Cleaning & Preparation

Data cleaning and transformation were performed using Python (Pandas):

Converted date fields into proper datetime formats

Extracted expiration year (expires_yy) from expires

Standardized currency fields (credit_limit)

Handled missing values and invalid records

Created derived columns such as:

Account age

PIN age

Credit limit categories (Low / Medium / High / Premium)

🧮 SQL Analysis

After cleaning, the dataset was analyzed using SQL to answer key business questions such as:

Credit exposure by card brand and card type

Average credit limit per client

Distribution of customers by account tenure

PIN age trends across credit tiers

Identification of potential risk groups based on:

High credit limits

Long PIN age

These queries were designed to mirror real-world financial risk analysis use cases.

📊 Power BI Dashboard

The final insights are presented in a Power BI dashboard titled:

Credit Exposure
Dashboard Sections:
🔹 Key Metrics (KPIs)

Total Clients

Total Cards Issued

Average Credit Limit

Average PIN Age

🔹 Credit Composition

Credit Limit by Card Type

Credit Limit by Card Brand

🔹 Security Indicators

PIN Age Distribution

Chip vs Non-Chip Card Usage

🔹 Potential Risk Analysis

Credit Limit Category vs PIN Age
(Used to highlight areas where preventive security measures may be required)

🧠 Key Insights

High credit exposure is concentrated among a small subset of premium-limit clients

Older PINs combined with higher credit limits indicate potential security risk, despite no confirmed breaches

Chip-enabled cards dominate the dataset, suggesting strong baseline security adoption

Long-tenured accounts tend to have higher credit limits and older PINs, increasing exposure over time
