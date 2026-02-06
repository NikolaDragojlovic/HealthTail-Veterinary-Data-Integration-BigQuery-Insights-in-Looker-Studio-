# HealthTail-Veterinary-Data-Integration-BigQuery-Insights-in-Looker-Studio

HealthTail: Veterinary BI Insights & Medication Audit Automation


## Project Overview
Set in early 2026, this project was developed for HealthTail, one of the city's largest veterinary hospitals, under the consultancy of Clinipet. The goal was to transform HealthTail’s manual auditing processes into an automated, data-driven system using the Google Cloud Platform (GCP) suite.

## Business Challenges

HealthTail faces two primary challenges:

Auditing Medication Purchases and Expenses
They need a streamlined way to track and analyze their annual medication spending.

Monitoring Diagnoses and Disease Trends
HealthTail wants to identify the most common diagnoses and diseases among their patients, segmented by pet type and breed. This information will help them plan staffing needs and optimize medication procurement.

## Tools & Technologies

Data Warehouse: Google BigQuery (ETL & Aggregation).

SQL Tool: BigQuery Console (Query development,data cleaning, transformation, analysis).

BI Tool: Looker Studio (Interactive Dashboard & reporting).

Data Source: .csv (Patient Cards, Visit Logs, Supplier Invoices).

Google Drive – project organization & delivery.

## Data Dictionary
The project integrates three primary data sources:

healthtail_reg_cards: 1,000+ patient records including ID, pet type, breed, and owner contact info.

visits: Clinical records containing diagnoses, attending doctors, and prescribed medication costs.

invoices: Financial records of medication procurement, including suppliers, pack quantities, and unit prices.

## Project Workflow
Step 1: Data Integration & Cleaning (ETL)
The raw data contained manual entry errors (e.g., inconsistencies in names and phone numbers). I developed SQL scripts to:

Clean and standardize the reg_cards table.

Unify disparate visit and invoice records into an aggregated dataset for seamless analysis.


Step 2: SQL Research & Analysis
I addressed specific research questions from HealthTail managers to enhance audit accuracy.

Analyzed annual medication spending trends.

Segmented disease prevalence by breed and species.


Step 3: Looker Studio Interactive Reporting
I delivered an interactive real-time report that allows HealthTail to monitor:

Most common diagnoses by pet category.

Real-time medication inventory and expense tracking.


## Deliverables
| File/Link | Description |
|-----------|-------------|
| [Step_1_SQL:](https://docs.google.com/document/d/1Y7I3fdYE99MYXoOfBnIh3gg2FDDouKjfR2EFZVBoLH4/edit?usp=sharing) |  Data cleaning and table aggregation queries |
| [Step_2_SQL:](https://docs.google.com/document/d/1ZmuudlIRDltetceyoPzlPGs8AHun9raXoCPL6v_UstY/edit?usp=sharing) | Research questions and analytical queries |
| [Looker_studio_report:](https://docs.google.com/document/d/15-1IHLwnJHcAlBI-Z_tteNJ5OlGW224aFxzVEMY_9sw/edit?usp=sharing) | Link to the live dashboard |
| [Zoom-Live_Presentation.mp4:](https://drive.google.com/file/d/1kN_j2Y8AIghIsKishz_rtPrmu3_-xhkI/view?usp=sharing) | Recorded walkthrough of the final product |

## How to Read the Report – Metrics & Definitions

Diagnosis Count
Number of visits associated with a specific diagnosis.

Medication Cost
Cost of medication prescribed during visits or purchased via invoices.

Visits per Pet
Frequency of visits per patient, useful for workload and staffing analysis.

Medication Usage
Share of medication packs consumed relative to purchases.

Segmentation
All metrics can be filtered by:

Pet type

Breed

Time period
## Expected Outcomes

End-to-end data workflow from raw CSV to interactive dashboard

BigQuery ETL processes including data cleaning and transformation

SQL query optimization for business intelligence

Looker Studio dashboard design for stakeholder reporting

Client presentation skills for delivering data insights

## Final Results
Automation: Replaced manual medication auditing with a streamlined BigQuery workflow.

Strategic Planning: Provided a granular view of patient demographics, enabling HealthTail to optimize their medication procurement based on actual disease trends.

End-to-End Delivery: Demonstrated proficiency in the full data lifecycle, from raw CSV ingestion to executive-level presentations.

## Author
Nikola Dragojlović  
Junior Data Analyst (Masterschool DA & BI Track, April Cohort 2025)
