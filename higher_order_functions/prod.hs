-- Implements a function prod :: [Int] -> Int that returns the product of a
-- list of integers

-- My Solution:

prod :: [Int] -> Int

prod = foldl (*) 1
