-- Implement a function powersOf2 :: [Int] that generates the list of all the
-- powers of 2.

-- My Solution:

powersOf2 :: [Int]

powersOf2 = iterate (*2) 1
