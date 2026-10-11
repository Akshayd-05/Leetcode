select x, y, z, 
(case when x+y > z and y+z > x and x+z > y then 'Yes' ELSE 'No' END) as triangle
from Triangle;