-- Write a function absValue :: Int -> Int that, given an integer, returns its absolute value.

-- My Solution:

absValue :: Int -> Int -- type header

-- Define with Guards

absValue x
    | x >= 0    =  x
    | otherwise = -x
