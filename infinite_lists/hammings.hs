-- The goal of this problem is to work the definition of infinite lists. In particular, you
-- are required to define the function that generates the ordered sequence of the
-- Hamming numbers [1,2,3,4,5,6,8,9,10,12...]. The Hamming numbers are those that
-- only have 2,3 and 5 as prime divisors. Use the function hammings :: [Integer]

-- My Solution:

hammings :: [Integer]

hammings = 1 : (merge (map (*2) hammings) $ merge (map (*3) hammings) (map (*5) hammings))
    where
        merge :: [Integer] -> [Integer] -> [Integer]
        merge (x:xs) (y:ys)
            | x < y     = x : merge xs (y:ys)
            | x == y    = x : merge xs ys
            | otherwise = y : merge (x:xs) ys
