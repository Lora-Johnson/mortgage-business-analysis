DELIMITER $$

CREATE PROCEDURE loan_level_del_exhaust (
    IN p_state  VARCHAR(2)
)
BEGIN
    SELECT 
        del.loan_id AS loan_number,
        del.state AS 'state',
        CASE 
            WHEN del.current_LTV >= 100 THEN 'HIGH RISK'
            WHEN del.current_LTV BETWEEN 81 AND 99 THEN 'MEDIUM RISK'
            WHEN del.current_LTV <= 80 THEN 'LOW RISK'
            ELSE 'UNKNOWN'
        END AS risk_level,
        CASE 
            WHEN IFNULL(del.current_DTI, 0) <= 50 THEN 'LOW DEBT'
            ELSE 'HIGH DEBT'
        END AS debt_level,
        CASE 
            WHEN del.days_past_due <= 30 THEN 'CURRENT'
            WHEN del.days_past_due BETWEEN 31 AND 59 THEN '31-59'
            WHEN del.days_past_due BETWEEN 60 AND 89 THEN '60-89'
            WHEN del.days_past_due BETWEEN 90 AND 119 THEN '90-119'
            WHEN del.days_past_due >= 120 THEN '120+'
            ELSE 'UNKNOWN'
        END AS delinquency_level,
        emp.unempl_ex AS exhaust_rate
   FROM delinquency_data del
   RIGHT JOIN unemployment_forecast emp
        ON del.state = emp.state
    WHERE del.state = p_state;
END$$

DELIMITER ;
