-- The goal of this problem is to work the definition of infinite lists. In particular, you
-- are required to define the function that generates the sequence of the Fibonacci
-- numbers [0,1,1,2,3,5,8,13,...]. Use the function fibs :: [Integer]

-- My Solution:

fibs :: [Integer]

fibs = fibo 0 1
    where
        fibo :: Integer -> Integer -> [Integer]
        fibo x y = x : (fibo y (x+y))

-- Other Solution:

fibs1 :: [Integer]
fibs1 = 0 : 1 : zipWith (+) fibs1 (tail fibs1)
