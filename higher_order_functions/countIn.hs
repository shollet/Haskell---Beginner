-- Implement a function countIn :: [[Int]] -> Int -> [Int] that, given a list of sublists l and an
-- element x, returns the list that tells how many times x appears in each sublist of l

countIn :: [[Int]] -> Int -> [Int]

countIn l x = map count l
    where
        count :: [Int] -> Int
        count = length . (filter (==x))
