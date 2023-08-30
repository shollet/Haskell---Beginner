-- Write a function selectFirst :: [Int] -> [Int] -> [Int] -> [Int]
-- that, given three lists l1,l2 and l3, returns the elements of l1 that appear in
-- l2 in a position strictly smaller than in l3. If an element appears in l2 and
-- not in l3, it is considered to appear in a previous position.

--          Input                                              Output

-- selectFirst [] [] []                                  ->      []
-- selectFirst [8,4,5,6,12,1] [] [8,6,5,4,1]             ->      []
-- selectFirst [8,4,5,6,12,1] [4,5,6,2,8,12] []          -> [8,4,5,6,12]
-- selectFirst [8,4,5,6,12,1] [4,5,6,2,8,12] [8,6,5,4,1] ->   [4,5,12]

-- My Solution:

selectFirst :: [Int] -> [Int] -> [Int] -> [Int]
selectFirst xs ys zs = [x | x <- xs,
    (belongs x ys), ((not $ belongs x zs) ||
    ((position x ys) < (position x zs)))]
        where
            belongs :: Int -> [Int] -> Bool
            belongs x [] = False
            belongs x (y:ys) = (x == y) || belongs x ys

            position :: Int -> [Int] -> Int
            position x ys = pos x ys 0
                where
                    pos :: Int -> [Int] -> Int -> Int
                    pos x (y:ys) it
                        | x == y    = it
                        | otherwise = pos x ys (it+1)
