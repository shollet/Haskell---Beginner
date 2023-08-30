-- Write a function height :: Tree a -> Int that, given a tree, returns its height, assuming
-- that empty trees have zero height

data Tree a = Node a (Tree a) (Tree a) | Empty
    deriving (Show)

height :: Tree a -> Int

height Empty = 0
height (Node _ lc rc) = 1 + max (height lc) (height rc)
