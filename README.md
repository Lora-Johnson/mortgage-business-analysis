<div id="user-content-toc" align="center">
  <ul style="list-style: none;">
    <summary><h1>Mortgage Industry Business Analysis</h1></summary>
  </ul>
</div>

A data analysis project examining U.S. mortgage delinquency trends and their relationship to economic indicators such as unemployment and borrower risk metrics. All data used in this repository is synthetic or publicly available. Scenarios are illustrative and do not represent real systems.

## Mortgage Delinquency Rates
Mortgage delinquency rates help assess borrower stress and overall loan portfolio health. Early-stage delinquencies (30–89 days past due) may indicate emerging financial strain, while 90+ day delinquencies often signal elevated risk. Linking these trends to unemployment data adds actionable economic context.

## Loan-to-Value and Debt-to-Income Ratios
Loan-to-Value (LTV) and Debt-to-Income (DTI) ratios are two of the most reliable indicators of mortgage delinquency risk because they capture both borrower leverage and cash-flow strain. LTV reflects how much equity a borrower has in the property. DTI measures a borrower’s monthly debt obligations relative to income. 

### What are "Bad" LTV and DTI Ratios?
LTV ratios above 80 percent are considered higher risk because borrowers have limited equity, increasing vulnerability to home price declines and reducing incentives to remain current. At this level, lenders typically require private mortgage insurance (PMI) to offset the higher probability of default.

DTI ratios above 50 percent indicate that a borrower’s debt obligations consume more than half of their gross income, leaving little capacity to absorb income disruptions or rising expenses. Borrowers with elevated DTIs are more likely to experience payment instability, particularly during periods of unemployment or economic stress.

When analyzed together, LTV and DTI provide a more complete risk profile. Borrowers with both high LTV and high DTI are particularly susceptible to delinquency, as they lack both equity buffers and disposable income. Tracking changes in these metrics over time allows lenders to identify emerging stress before delinquency occurs.

## Unemployment Insurance Exhaustion Rate
The unemployment insurance (UI) exhaustion rate is the percentage of individuals who have used up all of their allotted state-funded, regular unemployment benefits before finding a new job. A rising rate indicates worsening economic conditions, as more people are struggling to find employment within the standard, typically 26-week, timeframe. 

Unemployment exhaustion rates offer forward-looking insight into borrower distress that traditional delinquency metrics often miss.
When borrowers approach or reach unemployment insurance exhaustion, they are transitioning from temporary income disruption to sustained financial hardship. This significantly increases the probability of mortgage delinquency, especially for borrowers already exhibiting elevated DTI ratios.

From a business and risk-management perspective, this data enables proactive intervention:

   * Targeted outreach: Lenders can identify at-risk borrowers and engage them before payments are missed, offering forbearance options, loan modifications, or repayment plans.
   * Direct assistance opportunities: Exhaustion data supports tailored programs that help borrowers stabilize housing payments during prolonged unemployment.
   * Community reinvestment initiatives: For larger institutions, this insight supports CRA-aligned efforts by directing resources to communities experiencing concentrated unemployment stress, improving both borrower outcomes and regulatory positioning.

By combining unemployment exhaustion data with LTV and DTI analysis, institutions can move from reactive delinquency management to predictive risk mitigation and community

### What is a "Bad" Exhaustion Rate?
Severe (40%+): Historically, when 40% or more of recipients exhaust their benefits, it signifies a major economic failure to create jobs, comparable to or worse than major recessionary periods (e.g., 2003, early 1980s).

High (30% - 39%): Signals that the labor market is difficult and long-term unemployment is rising, making it harder for workers to find new jobs before their benefits run out.

Stable/Normal (20% - 29%): In a stable, growing economy, it is normal for a portion of the population to take longer to find suitable work, though this number should not spike rapidly. 

It is important to note that a "good" (low) unemployment rate does not always mean a low exhaustion rate. Even if the overall unemployment rate is relatively low (e.g., around 4-5%), a high exhaustion rate indicates that those who are unemployed are struggling intensely to find new employment.

## Data Sets
The following data set can be ingested into a data warehouse using CSV files downloaded from the DOL unemployment summary tables. Because the organization updates this data quarterly, building an automated data pipeline is not necessary.

[View SQL](/sql/mortgage_analysis.sql) 

