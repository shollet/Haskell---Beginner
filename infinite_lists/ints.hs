-- The goal of this problem is to work the definition of infinite lists. In particular,
-- you are required to define the function that generates the sequence of the
-- integer numbers [0,1,-1,2,-2,3,-3,...]. Use the function ints :: [Integer]

ints :: [Integer]

ints = iterate integers 0
    where
        integers :: Integer -> Integer
        integers x
            | x > 0     = -x
            | otherwise = 1 - x

-- Other Solution:

ints1 :: [Integer]
ints1 = 0 : concatMap (\x -> [x, -x]) [1..]
