-- Implement a function flatten :: [[Int]] -> [Int] that flattens a list of lists
-- of integers in a list of integers

-- My Solution:

flatten :: [[Int]] -> [Int]

flatten [] = []
flatten (x:xs) = x ++ flatten xs

-- Other Solution:

flatten1 :: [[Int]] -> [Int]

flatten1 = foldr (++) []    -- implicit input
