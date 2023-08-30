-- Define a function combined :: [Int] -> [Int -> Int] -> [[Int]]
-- that, given a list of integers and a list of functions from integers to
-- integers, returns the list consisting of applying each of the functions in
-- the second list to the elements in the first list

-- My Solution:

combined :: [Int] -> [Int -> Int] -> [[Int]]

combined l fs = map (\f -> map f l) fs

-- Other Solution:

combined1 :: [Int] -> [Int -> Int] -> [[Int]]
combined1 l fs = [map f l | f <- fs]
