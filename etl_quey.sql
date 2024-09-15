select * from credit_risk_german crg;

-- 1. Cluster umur dan kredit berdasarkan jenis kelamin :
SELECT sex,
    CASE
        WHEN age BETWEEN 18 AND 30 THEN '18-30'
        WHEN age BETWEEN 31 AND 45 THEN '31-45'
        ELSE '46+'
    END AS age_cluster,
    COUNT(*) AS count_data,
    AVG("Credit Amount (Rp)") AS avg_credit_amount
FROM credit_risk_german 
GROUP BY sex, age_cluster
ORDER BY sex, age_cluster;

-- 2. Analisis kredit berdasarkan status perumahan dan akun tabungan :
select housing, 
	saving_accounts,
	AVG("Credit Amount (Rp)") as avg_credit_amount,
	count(*) as Count
from credit_risk_german
group by housing, saving_accounts
order by housing, saving_accounts;

-- 3. Analisis kredit berdasarkan kombinasi tujuan dan pekerjaan :
select purpose,
	job,
	count(*) as Count,
	SUM("Credit Amount (Rp)") as total_credit_amount,
	AVG("Credit Amount (Rp)") as avg_credit_amount
from credit_risk_german
group by purpose, job 
order by total_credit_amount desc;
