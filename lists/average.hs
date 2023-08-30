-- Define a function average :: [Int] -> Float that, given a non-empty list
-- of integers, returns its average

-- My Solution:

average :: [Int] -> Float

average x = sumElem / len
    where
        sumElem = fromIntegral(sum(x)) :: Float
        len = fromIntegral(length(x)) :: Float
