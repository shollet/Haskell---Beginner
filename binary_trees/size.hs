-- Write a function size :: Tree a -> Int that, given a tree, returns its size, that is, the
-- number of nodes it contains

-- My Solution:

data Tree a = Node a (Tree a) (Tree a) | Empty
    deriving (Show)

size :: Tree a -> Int

size Empty = 0  -- base case: Empty Tree
size (Node _ lc rc) = 1 + size lc + size rc
