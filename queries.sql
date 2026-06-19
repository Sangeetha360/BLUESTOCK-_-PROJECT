SELECT name
FROM sqlite_master
WHERE type='table';
SELECT
    f.fund_id,
    f.fund_name,
    f.category,
    p.one_year_return,
    p.three_year_return,
    p.five_year_return
FROM "01_fund_master" f
INNER JOIN "07_scheme_performance" p
ON f.fund_id = p.fund_id;
SELECT * 
FROM "01_fund_master";
SELECT *
FROM "01_fund_master"
LIMIT 5;
SELECT COUNT(*) AS total_funds
FROM "01_fund_master";
SELECT *
FROM "01_fund_master"
WHERE category = 'Equity';
SELECT *
FROM "01_fund_master"
ORDER BY fund_name ASC;
SELECT category, COUNT(*) AS total_funds
FROM "01_fund_master"
GROUP BY category;
SELECT
    f.fund_id,
    f.fund_name,
    f.category,
    p.one_year_return,
    p.three_year_return,
    p.five_year_return
FROM "01_fund_master" f
INNER JOIN "07_scheme_performance" p
ON f.fund_id = p.fund_id;
SELECT
    f.fund_name,
    p.one_year_return
FROM "01_fund_master" f
INNER JOIN "07_scheme_performance" p
ON f.fund_id = p.fund_id
ORDER BY p.one_year_return DESC;
SELECT
    AVG(one_year_return) AS average_return
FROM "07_scheme_performance";
SELECT
    f.fund_name,
    t.investor_name,
    t.transaction_type,
    t.amount
FROM "01_fund_master" f
INNER JOIN "08_investor_transactions" t
ON f.fund_id = t.fund_id;
SELECT
    f.fund_name,
    h.stock_name,
    h.sector,
    h.allocation_percent
FROM "01_fund_master" f
INNER JOIN "09_portfolio_holdings" h
ON f.fund_id = h.fund_id;
SELECT
    f.fund_name,
    n.date,
    n.nav
FROM "01_fund_master" f
INNER JOIN "02_nav_history" n
ON f.fund_id = n.fund_id;
SELECT *
FROM "05_category_inflows";
SELECT *
FROM "04_monthly_sip_inflows";
SELECT *
FROM "03_aum_by_fund_house";
SELECT *
FROM "10_benchmark_indices";
SELECT
    sector,
    SUM(allocation_percent) AS total_allocation
FROM "09_portfolio_holdings"
GROUP BY sector;
SELECT
    transaction_type,
    SUM(amount) AS total_amount
FROM "08_investor_transactions"
GROUP BY transaction_type;
SELECT
    fund_id,
    MAX(nav) AS highest_nav
FROM "02_nav_history"
GROUP BY fund_id;