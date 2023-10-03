WITH RECURSIVE tour AS (SELECT point1::bpchar AS tour,
                               point1,
                               point2,
                               cost,
                               cost           AS sum
                        FROM name_nodes
                        WHERE point1 = 'A'
                        UNION ALL
                        SELECT parent.tour || ',' || parent.point2 AS tour,
                               child.point1,
                               child.point2,
                               parent.cost,
                               parent.sum + child.cost             AS sum
                        FROM name_nodes AS child
                        JOIN tour AS parent ON child.point1 = parent.point2
                        WHERE tour NOT LIKE '%' || parent.point2 || '%')
SELECT *
FROM tour;
SELECT sum AS total_cost, '{' || tour || ',A' || '}' AS tour
FROM way
WHERE length(tour) = 7
  AND point2 = 'A' AND sum = (SELECT min(sum) FROM way WHERE length(tour) = 7 AND point2 = 'A')
  OR sum = (SELECT max(sum) FROM way WHERE length(tour) = 7 AND point2 = 'A')
ORDER BY 1,2