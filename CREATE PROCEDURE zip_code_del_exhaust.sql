DELIMITER $$

CREATE PROCEDURE zip_code_del_exhaust (
    IN p_state  VARCHAR(2)
)
BEGIN
    SELECT 
        COUNT(del.loan_id) AS loan_number,
        del.zip_code 
    FROM delinquency_data del
    RIGHT JOIN unemployment_forecast emp
        ON del.state = emp.state
    WHERE del.current_LTV >= 90.0
        AND del.current_DTI >= 50.0
        AND del.days_past_due >= 90
        AND emp.unempl_ex >= 0.35
        AND p_state = del.state
     GROUP BY del.zip_code
     ORDER BY del.zip_code;
END$$

DELIMITER ;

