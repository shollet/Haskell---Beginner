-- The goal of this problem is to work the definition of infinite lists. In particular,
-- you are required to define the function that generates the sequence of the
-- natural numbers [0,1,2,3,4,5,6,7,...]. Use the function nats :: [Integer]

-- My Solution:

nats :: [Integer]

nats = iterate (+1) 0

-- Other Solution:

nats1 :: [Integer]

nats1 = 0 : map (+1) nats1
