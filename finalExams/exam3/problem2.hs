-- The goal of this exercise is to make the type of the binary trees an instance of
-- the Foldable class. Consider this type for binary trees:
-- data Tree a = Empty | Node a (Tree a) (Tree a)
--     deriving (Show)
-- It is requested:
-- 1. Make Tree an instance of Foldable. To do this, implement the foldr
--    function by applying a function to the elements of the tree while
--    following a preorder traversal.
--
-- 2. Define a function avg :: Tree Int -> Double to calculate the average of the
--    elements of a non-empty tree of integers. Use fromIntegral to convert
--    from integer to real.
--
-- 3. Define a function cat :: Tree String -> String to concatenate with spaces
--    all the nodes of a text tree

--              Input                                                  Output
-- maximum $ Node 'a' (Node 'c' Empty Empty) (Node 'b' Empty Empty) ->      'c'
-- avg $ Node 10 (Node 20 Empty Empty) (Node 30 Empty Empty)        ->      20.0
-- cat $ Node "my" (Node "dog" Empty Empty) (Node "likes" (Node
-- "summer" Empty Empty) Empty)                                     ->"my dog likes
--                                                                      summer"


-- My Solution:

data Tree a = Empty | Node a (Tree a) (Tree a)
    deriving (Show)

instance Foldable Tree where
    foldr _ z Empty = z
    foldr f z (Node x left right) = f x (foldr f (foldr f z right) left)

avg :: Tree Int -> Double
avg tree = fromIntegral(sumElements tree) / fromIntegral(numElements tree)
    where
        sumElements Empty = 0
        sumElements (Node x left right) = x + sumElements left + sumElements right

        numElements Empty = 0
        numElements (Node x left right) = 1 + numElements left + numElements right

cat :: Tree String -> String
cat tree = foldr (\x acc -> if null acc then x else x ++ " " ++ acc) "" tree
