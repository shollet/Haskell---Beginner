-- The goal of this problem is to work the definition of infinite lists. In particular, you
-- are required to define the function that generates the sequence of the factorial
-- numbers [1,1,2,6,24,120,720,5040,...]. Use the function factorials :: [Integer]

-- My Solution:

factorials :: [Integer]

factorials = scanl (*) 1 $ iterate (+1) 1

-- Other Solution:

factorials1 :: [Integer]
factorials1 = 1 : zipWith (*) [1..] factorials1
