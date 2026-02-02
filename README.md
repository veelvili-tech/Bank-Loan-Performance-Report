# Project Background
**Company Overview**

The company is a mid-sized commercial bank operating in the retail and small-business lending space. The bank provides financial products such as personal loans, home loans, auto loans, and small business loans. Its primary business model is interest-based lending, where revenue is generated from loan interest, processing fees, and penalty charges on overdue payments.

As a Data Analyst working within the Risk & Analytics team, my role is to analyze historical loan data to support better lending decisions, monitor portfolio performance, and identify potential risk areas. The bank operates in a highly regulated environment, making accurate reporting and risk assessment critical.

Key Business Metrics
* Total Loan Applications
* Loan Approval Rate
* Total Funded Amount
* Interest Income
* Default Rate
* Non-Performing Loans (NPL)
* Average Interest Rate
* Debt-to-Income (DTI) Ratio 

# Key Analysis Areas
Insights and recommendations are provided on the following key areas:

* **Category 1:** Loan Portfolio Performance
* **Category 2:** Credit Risk & Default Analysis
* **Category 3:** Customer Demographics & Segmentation
* **Category 4:** Loan Purpose & Product Performance

# Resources
* SQL Data Cleaning & Inspection Queries:
[[GitHub link – SQL_Bank_Loan_Overview.sql](https://github.com/veelvili-tech/Bank-Loan-Performance-Report/blob/main/BANK_LOAN_OVERVIEW.sql)]
[[Github link - SQL_Bank_Loan_Summary](https://github.com/veelvili-tech/Bank-Loan-Performance-Report/blob/main/BANK_LOAN_SUMMARY.sql)]


* Interactive Power BI Dashboard:
<img width="730" height="434" alt="image" src="https://github.com/user-attachments/assets/30ad9f09-4ab7-466c-8f5b-00ebf2954f9f" />


# Data Structure & Initial Checks

The bank’s main database consists of 4 core tables with approximately XXX,XXX total records.
- **Table 2:**
- **Table 3:**
- **Table 4:**
- **Table 5:**

[Entity Relationship Diagram here]

# Executive Summary

### Overview of Findings
From a portfolio and risk management perspective, three key insights stand out:

* Loan defaults are highly concentrated among borrowers with high DTI ratios and low credit scores.
* Certain loan purposes (debt consolidation and small business loans) show higher default risk compared to others.
* Stable income and longer employment tenure significantly improve repayment performance.
* These insights can help the bank improve credit screening, pricing strategies, and portfolio risk controls.

[Visualization, including a graph of overall trends or snapshot of a dashboard]


# Insights Deep Dive
### Category 1: Loan Portfolio Performance

*  Total funded loan amount has steadily increased year-over-year, indicating growing demand for credit products.
  
*  Personal loans account for the highest number of applications but generate lower average interest income compared to business loans.
  
* Loans with longer tenures (60 months+) show higher cumulative interest income but also higher delinquency rates.

* Overall approval rate remains stable, suggesting consistent underwriting policies.

[Visualization specific to category 1]


### Category 2: Credit Risk & Default Analysis

* Borrowers with credit scores below 600 contribute disproportionately to total defaults.
* Default rates increase sharply when DTI exceeds 40%.
* Loans with higher interest rates (>15%) show elevated default probability, indicating risk-based pricing impact.
* Early-stage delinquencies (30–60 days overdue) are strong predictors of eventual default.

[Visualization specific to category 2]


### Category 3:

* Customers aged 30–45 represent the largest and most profitable borrower segment.
* Salaried employees demonstrate significantly better repayment behavior than self-employed customers.
* Higher income bands correlate with lower default rates and higher loan approval ratios.
* Employment stability (5+ years with same employer) reduces default likelihood.

[Visualization specific to category 3]


### Category 4: Loan Purpose & Product Performance

* Debt consolidation loans show the highest default rates despite moderate interest pricing.
* Home improvement and education loans exhibit strong repayment performance.
* Small business loans generate higher interest income but carry elevated risk.
* Auto loans demonstrate balanced risk-return characteristics.

[Visualization specific to category 4]

# Recommendations:

Based on the analysis, the Risk & Credit Policy team should consider the following actions:

* High DTI borrowers show increased defaults → Introduce stricter DTI thresholds or require additional documentation.
* Low credit score segments drive risk → Implement tiered pricing or enhanced credit checks.
* Debt consolidation loans underperform → Reassess eligibility criteria and repayment terms.
* Stable employment improves repayment → Incorporate employment tenure as a stronger approval factor.
* Early delinquency predicts default → Deploy proactive collection and early warning systems.
  
# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Missing income values were excluded from DTI-based analysis.
* Credit scores were assumed to be accurate and up-to-date.
* Loan status was treated as final, with no restructuring considered.
* External macroeconomic factors (inflation, interest rate changes) were not included.

# Tools & Technologies
* SQL: Data cleaning, joins, aggregations, risk metrics

* Power BI: Interactive dashboards, DAX calculations

* Excel: Initial data validation
