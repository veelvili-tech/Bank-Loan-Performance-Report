-- to retrive the whole dataset
SELECT * FROM bank_loan_data

-- to view the total loan application
SELECT COUNT(id) AS Total_Loan_Applications FROM bank_loan_data

-- to view the Month to Date (MTD) total application (December 2021)
-- MTD means the period starting from the begining of current month up until the latest date 
SELECT COUNT(id) AS MTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- to view the month to date (MTD) total application (November 2021)
SELECT COUNT(id) AS PMTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

--MoM is money paid out from one month to the next
--MoM = (MTD-PMTD)/PMTD
---------------------------------------------------------------------------------------------
--2. TOTAL FUNDED AMOUNT

--total funded amount
SELECT SUM(loan_amount) AS Total_Funded_Amout FROM bank_loan_data

--total funded amount Month to Date (december 2021)
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) =2021

--total funded amount Previous Month to Date (november 2021)
SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

---------------------------------------------------------------------------------------------
--3. TOTAL AMOUNT RECEIVED

--total payment amount received
SELECT SUM(total_payment) as Total_Amount_Received FROM bank_loan_data

--total payment amount receeived Month to Date (December 2021)
SELECT SUM(total_payment) as MTD_Total_Amount_Received FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

--total payment amount received previous month to date (November 2021)
SELECT SUM(total_payment)  as PMTD_Total_Amount_Received FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-------------------------------------------------------------------------------------------
--4. AVERAGE INTEREST RATE

--average interest rate rounded to 4 dps
SELECT ROUND(AVG(int_rate),4) * 100 AS Avg_Interest_Rate FROM bank_loan_data

--average interest date MTD (december 2021)
SELECT ROUND(AVG(int_rate),4) * 100 AS MTD_Avg_Interest_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

--average interest rate PMTD (November 2021)
SELECT ROUND(AVG(int_rate),4) * 100 as PMTD_Avg_Interest_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

------------------------------------------------------------------------------------------
--5. AVERAGE DEBT TO INCOEM RATIO (DTI)

--average dti
SELECT ROUND(AVG(dti),4) * 100 AS Avg_DTI FROM bank_loan_data

--average dti MTD (December 2021)
SELECT ROUND(AVG(dti),4) * 100 AS MTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

--average dti PMTD (November 2021)
SELECT ROUND(AVG(dti),4) * 100 AS MTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-----------------------------------------------------------------------------------------
--good loan application %
SELECT 
	(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100)
	/
	COUNT(id) AS Good_Loan_Percentage 
FROM bank_loan_data

--good loan application count 
SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data 
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

--good loan funded amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount FROM bank_loan_data
WHERE loan_status = 'Fully Paid' or loan_status = 'Current'

--good loan total received amount
SELECT SUM(total_payment) AS Good_Loan_Total_Received_Amount FROM bank_loan_data
WHERE loan_status = 'Fully Paid' or loan_status = 'Current'

--------------------------------------------------------------------------------------------

--bad loan application %
SELECT 
	(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0)
	/
	COUNT(id) AS bad_Loan_Percentage 
FROM bank_loan_data

--bad loan application count 
SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data 
WHERE loan_status = 'Charged Off'

--bad loan funded amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount FROM bank_loan_data
WHERE loan_status = 'Charged Off'

--bad loan total received amount
SELECT SUM(total_payment) AS Bad_Loan_Total_Received_Amount FROM bank_loan_data
WHERE loan_status = 'Charged Off'

-------------------------------------------------------------------------------------
--5.Loan Status Grid View
SELECT 
	loan_status,
	COUNT(id) AS Total_Loan_Application,
	SUM(total_payment) AS Total_Amount_Received,
	SUM(loan_amount) AS Total_Funded_Amount,
	AVG(int_rate * 100) AS Interest_Rate,
	AVG(dti * 100) AS DTI
FROM
	bank_loan_data
GROUP BY
	loan_status

--MTD Funded Amount & MTD Amount Received
SELECT
	loan_status,
	SUM(total_payment) AS MTD_Total_Amount_Received,
	SUM(loan_amount) AS MTD_Total_Funded_Amount
FROM 
	bank_loan_data
WHERE 
	MONTH(issue_date) = 12
GROUP BY loan_status
