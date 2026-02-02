SELECT * FROM bank_loan_data

--Monthly Trends by Issue Date
SELECT
	MONTH(issue_date) AS Month_Number,
	DATENAME(MONTH, issue_date) AS Month_Name,
	COUNT(id) AS Total_Loan_Application,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM 
	bank_loan_data
GROUP BY
	MONTH(issue_date), DATENAME(MONTH,issue_date)
ORDER BY
	MONTH (issue_date)

---------------------------------------------------------------
--Regional Analysis by State 
SELECT
	address_state,
	COUNT(id) AS Total_Loan_Application,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM 
	bank_loan_data
GROUP BY
	address_state
ORDER BY
	SUM(loan_amount) DESC
---------------------------------------------------------------
--Loan Term Analysis 
SELECT
	term,
	COUNT(id) AS Total_Loan_Application,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM 
	bank_loan_data
GROUP BY
	term
ORDER BY
	term
-----------------------------------------------------------
--EMPLOYEE LENGTH ANALYSIS 
SELECT
	emp_length,
	COUNT(id) AS Total_Loan_Application,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM 
	bank_loan_data
GROUP BY
	emp_length
ORDER BY
	emp_length

----------------------------------------------------------
--Loan Purpose Breakdown 
SELECT
	purpose,
	COUNT(id) AS Total_Loan_Application,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM 
	bank_loan_data
GROUP BY
	purpose
ORDER BY
	COUNT(id) DESC

-------------------------------------------------------
--Home Ownership Analysis 

SELECT
	home_ownership,
	COUNT(id) AS Total_Loan_Application,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM 
	bank_loan_data
WHERE 
	grade = 'A' AND address_state = 'CA'
GROUP BY
	home_ownership
ORDER BY
	COUNT(id) DESC