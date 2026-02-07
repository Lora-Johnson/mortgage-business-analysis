CREATE TABLE delinquency_data (
    del_id INT AUTO_INCREMENT PRIMARY KEY,
    loan_id INT NOT NULL,
    state VARCHAR(2) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    current_LTV DECIMAL(5,2) NOT NULL,
    current_DTI DECIMAL(5,2),
    days_past_due INT NOT NULL,
    INDEX idx_delinquency_state (state)); 