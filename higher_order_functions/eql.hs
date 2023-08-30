-- Implement a function eql :: [Int] -> [Int] -> Bool that tells whether two lists of
-- integers are equal

-- My Solution:

eql :: [Int] -> [Int] -> Bool

eql [] [] = True
eql [x] [] = False
eql [] [y] = False
eql (x:xs) (y:ys)
    | x == y    = eql xs ys
    | otherwise = False

-- Other Solution:

eql1 :: [Int] -> [Int] -> Bool

eql1 x y
    | length x /= length y  = False
    | otherwise = and $ zipWith (==) x y

