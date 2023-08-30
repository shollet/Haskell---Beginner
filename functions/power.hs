-- Write a function power :: Int -> Int -> Int that, given an integer x and a natural p, returns the p-th power of x, that is, x^p

-- My Solution:

power :: Int -> Int -> Int  -- type header
power x 0 = 1   -- base case
power x p
    | even p = n * n
    | otherwise = n * n * x
    where
        n = power x (div p 2)
