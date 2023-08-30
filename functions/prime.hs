-- Write a function isPrime :: Int -> Bool that, given a natural, tells
-- whether it is a prime number or not

-- My Solution:

isPrime :: Int -> Bool  -- type header

isPrime 0 = False   -- base case #1
isPrime 1 = False   -- base case #2

isPrime x = not (hasDivisor (x - 1))
    where
        hasDivisor :: Int -> Bool
        hasDivisor 1 = False    -- base case
        hasDivisor n = mod x n == 0 || hasDivisor(n - 1)
