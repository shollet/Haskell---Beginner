-- Define a function
-- filterFoldl :: (Int -> Bool) -> (Int -> Int -> Int) -> Int -> [Int] -> Int
-- that returns a fold of all the elements that satisfy the given predicate

filterFoldl :: (Int -> Bool) -> (Int -> Int -> Int) -> Int -> [Int] -> Int

filterFoldl cond f x0 l = foldl f x0 $ filter cond l
