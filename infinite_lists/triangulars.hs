-- The goal of this problem is to work the definition of infinite lists. In particular, you
-- are required to define the function that generates the sequence of the triangular
-- numbers [0,1,3,6,10,15,21,28,...]. Use the function triangulars :: [Integer]

-- My Solution:

triangulars :: [Integer]

triangulars = scanl (+) 0 $ iterate (+1) 1


-- Other Solution:

triangulars1 :: [Integer]

triangulars1 = 0 : zipWith (+) [1..] triangulars1

