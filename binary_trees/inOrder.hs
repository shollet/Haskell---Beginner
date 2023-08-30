-- Write a function inOrder :: Tree a -> [a] that, given a tree, return its in-order
-- traversal.

data Tree a = Node a (Tree a) (Tree a) | Empty
    deriving (Show)

inOrder :: Tree a -> [a]

inOrder Empty = []

inOrder (Node root left right) = inOrder left ++ [root] ++ inOrder right
