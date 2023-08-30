-- The goal of this problem is to work the definition of infinite lists. In particular, you
-- are required to define the function that generates the sequence of the prime
-- numbers [2,3,5,7,11,13,17,19,...]. Use the function primes :: [Integer]

-- My Solution:

primes :: [Integer]

primes = filter isPrime $ iterate (+1) 1
    where
        isPrime :: Integer -> Bool
        isPrime 1 = False
        isPrime 2 = True
        isPrime n
            | even n    = False
            | otherwise = isPrimeAux 3
                where
                    isPrimeAux :: Integer -> Bool
                    isPrimeAux x
                        | x >= div n 2 = True
                        | mod n x == 0 = False
                        | otherwise    = isPrimeAux (x+2)

-- Other Solution:

primes1 :: [Integer]
primes1 = sieve [2..]

sieve :: [Integer] -> [Integer]
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]
