--1. What med did we spend the most money on in  total? 
SELECT
  med_name,
  SUM(total_value) AS total_spend
FROM
  `gcp-masterschool-project-nd.Clinipet_HealthTail_ds.med_audit`
WHERE stock_movement = 'stock_in'
GROUP BY
  med_name
ORDER BY
  total_spend DESC
LIMIT
  1;
  --1.answer: we spend most money in total ($1035780.0) on Vetmedin (Pimobendan).




  --2. What med had the highest monthly total_value spent on patients? AT what month?
 
SELECT med_name,month,SUM(total_value) AS total_spend
FROM
  `gcp-masterschool-project-nd.Clinipet_HealthTail_ds.med_audit`
WHERE stock_movement = 'stock_out'
GROUP BY
  med_name,month
ORDER BY
  total_spend DESC
LIMIT
  1;
--2.answer: Palladia (Toceranib Phosphate) had highest montly spent on patients ($50000.0) in November 2024
 


   --3. What month was the highest in packs of meds spent in vet clinic?
SELECT month,SUM(total_packs) AS total_packs
FROM
  `gcp-masterschool-project-nd.Clinipet_HealthTail_ds.med_audit`
WHERE stock_movement = 'stock_out'
GROUP BY
  month
ORDER BY
  total_packs DESC
LIMIT 1;
--3.answer: December 2024 had highest packs spent (3861.62)
 


  --4. What’s an average monthly spent in packs of the med that GENERATED the most revenue?
WITH top_med AS (
  SELECT
    med_name
  FROM `gcp-masterschool-project-nd.Clinipet_HealthTail_ds.med_audit`
  WHERE stock_movement = 'stock_out'
  GROUP BY med_name
  ORDER BY SUM(total_value) DESC
  LIMIT 1
)


SELECT
  m.med_name,
  AVG(m.total_packs) AS avg_packs
FROM `gcp-masterschool-project-nd.Clinipet_HealthTail_ds.med_audit` m
JOIN top_med t
  ON m.med_name = t.med_name
WHERE m.stock_movement = 'stock_out'
GROUP BY m.med_name
;
--4.answer: Palladia (Toceranib Phosphate) as top revenue maker had an average monthly spent of 52.54 packs.
