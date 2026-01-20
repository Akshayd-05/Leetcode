select x, y, z,
(case when x + y > Z AND y + z >x AND x + z > y THEN 'Yes' ELSE 'No' END) as triangle
from Triangle;