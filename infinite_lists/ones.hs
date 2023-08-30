-- The goal of this problem is to work the definition of infinite lists. In
-- particular, you are to define the function that generates the
-- sequence of ones [1,1,1,1,1,...]. Use the function ones :: [Integer]

-- My Solution:

ones :: [Integer]

ones = repeat 1

-- Other Solution:

ones1 :: [Integer]

ones1 = 1 : ones1
