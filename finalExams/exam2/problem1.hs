-- Write a function multEq :: Int -> Int -> [Int] that, given two
-- nonzero positive numbers x and y, outputs the
-- infinitely-increasingly-ordered list containing the numbers formed by
-- multiplying the same amount of x and y.

-- Input                                    Ouput

-- take 6 $ multEq 2 3          ->  [1,6,36,216,1296,7776]
-- take 5 $ multEq 3 7          ->  [1,21,441,9261,194481]

-- My Solution:

multEq :: Int -> Int -> [Int]
multEq x y = iterate (*n) 1
    where
        n = x * y
