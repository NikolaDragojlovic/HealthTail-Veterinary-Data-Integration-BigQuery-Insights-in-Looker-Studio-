SELECT
  patient_id,
  date_registration,
  owner_id,
  owner_name,
  REGEXP_REPLACE(owner_phone, r'[^0-9]', '') AS owner_phone,
  pet_type,
  IFNULL(breed,'Unknown') AS breed,
  gender,
  UPPER(patient_name) AS patient_name,
  patient_age
 
FROM
  `gcp-masterschool-project-nd.Clinipet_HealthTail_ds.CHT_reg_cards`




----------------------------------------------------------------------------------


SELECT
  DATE_TRUNC(month_invoice, MONTH) AS month,
  med_name,
  SUM(packs) AS total_packs,
  SUM(total_price) AS total_value,
  'stock_in' AS stock_movement
FROM
  `gcp-masterschool-project-nd.Clinipet_HealthTail_ds.invoices_cleaned`
GROUP BY month, med_name
UNION ALL
SELECT
  DATE_TRUNC(visit_datetime, MONTH) AS month,
  med_prescribed AS med_name,
  ROUND(SUM(med_dosage),2) AS total_packs,
  ROUND(SUM(med_cost),2) AS total_value,
  'stock_out' AS stock_movement
FROM
  `gcp-masterschool-project-nd.Clinipet_HealthTail_ds.visits_cleaned`
GROUP BY month, med_name
 
