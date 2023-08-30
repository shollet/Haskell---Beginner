-- Define a function consecutive :: [Int] -> [Int -> Int] -> [[Int]]
-- that, given a list of integers and a list of functions from integers to
-- integers, returns the list of lists where each list if the result of applying,
-- one after the other, the function int the second list to each element in the
-- first list.

-- My Solution:

consecutive :: [Int] -> [Int -> Int] -> [[Int]]

consecutive l fs = [[f x | f <- fs] | x <- l]


