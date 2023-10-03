WITH for_and_avg AS (
    SELECT  address,
       round(max(age::numeric) - (min(age::numeric) / max(age::numeric)),2) AS formula,
       ROUND(avg(age),2) AS average
    FROM person p
    GROUP BY 1
)

SELECT address,
       formula,
       average,
       formula > average AS comparison
FROM for_and_avg
ORDER BY 1