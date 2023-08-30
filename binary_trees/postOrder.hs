-- Write a function postOrder :: Tree a -> [a] that, given a tree, return its post-order
-- traversal.

-- My Solution:

data Tree a = Node a (Tree a) (Tree a) | Empty
    deriving (Show)

postOrder :: Tree a -> [a]

postOrder Empty = []

postOrder (Node x left right) = postOrder left ++ postOrder right ++ [x]
