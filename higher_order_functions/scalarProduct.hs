-- Implement a function scalarProduct :: [Float] -> [Float] -> Float that
-- returns the dot product of two lists of float numbers with the same size

-- My Solution:

scalarProduct :: [Float] -> [Float] -> Float

scalarProduct x y
    | length x /= length y = error "Not the same size"
    | otherwise            = sum $ buildList
        where
            buildList = zipWith (*) x y
