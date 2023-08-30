-- Implement a function myReverse :: [Int] -> [Int] that reverses a list of
-- integers

-- My Solution:

myReverse :: [Int] -> [Int]

myReverse = foldl (flip (:)) []
