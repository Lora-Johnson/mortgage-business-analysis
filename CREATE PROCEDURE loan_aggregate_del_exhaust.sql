DELIMITER $$

CREATE PROCEDURE loan_aggregate_del_exhaust (
       IN p_state VARCHAR(2)
)
BEGIN
    SELECT 
        COUNT(del.loan_id) AS loan_number,
        del.state AS state
    FROM delinquency_data del
    RIGHT JOIN unemployment_forecast emp
        ON del.state = emp.state
    WHERE del.current_LTV >= 90.0
        AND del.current_DTI >= 50.0
        AND del.days_past_due >= 90
        AND emp.unempl_ex >= 0.35
        AND (p_state IS NULL OR del.state = p_state)
     GROUP BY del.state
     ORDER BY del.state;
                         		
END$$

DELIMITER ;