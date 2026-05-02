SELECT is_fraud, COUNT(*) AS total_cases
FROM transactions
GROUP BY is_fraud;

SELECT merchant_category, COUNT(*) AS fraud_cases
FROM transactions
WHERE is_fraud = 1
GROUP BY merchant_category;

SELECT transaction_hour, COUNT(*) AS fraud_cases
FROM transactions
WHERE is_fraud = 1
GROUP BY transaction_hour;