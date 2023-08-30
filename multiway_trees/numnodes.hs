-- Write a function numnodes :: Tree a -> Int that, given a multiway tree, returns
-- the number of nodes.

-- My Solution:

data Tree a = Node a [Tree a]
    deriving (Eq, Show)

numnodes :: Tree a -> Int

numnodes (Node _ children) = 1 + sum (map numnodes children)
