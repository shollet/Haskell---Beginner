-- Define a function countIf :: (Int -> Bool) -> [Int] -> Int that, given a predicate
-- on integers and a list of integers, returns the number of elements in the list that satisfy
-- the predicate

-- My Solution:

countIf :: (Int -> Bool) -> [Int] -> Int

countIf predicate l = length $ filter predicate l
