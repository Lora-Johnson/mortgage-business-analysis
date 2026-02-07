CREATE TABLE unemployment_forecast (
    umempl_id INT AUTO_INCREMENT PRIMARY KEY,
    state VARCHAR(2) NOT NULL,
    unempl_ex DECIMAL(5,2) NOT NULL,
    INDEX idx_unemp_state (state));
/* NOTE: The umempl_ex data can be ingested into a data warehouse via .csv download from https://oui.doleta.gov/unemploy/data_summary/SummaryTables.pdf. 
Since the organization updates this data only quarterly, it doesn't make sense to create a pipeline. */

