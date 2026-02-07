CREATE TABLE unemployment_forecast (
    umempl_id INT AUTO_INCREMENT PRIMARY KEY,
    state VARCHAR(2) NOT NULL,
    unempl_ex DECIMAL(5,2) NOT NULL,
    INDEX idx_unemp_state (state));
