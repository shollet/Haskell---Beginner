-- Define a function insertIn :: a -> [a] -> Int -> [a] that inserts an element in a
-- given position into a list

-- My Solution:

insertIn :: a -> [a] -> Int -> [a]

insertIn x ys 1 = x:ys

insertIn x (y:ys) n = y:insertIn x ys (n-1)
