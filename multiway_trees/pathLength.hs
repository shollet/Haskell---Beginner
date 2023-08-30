-- Write a function pathLength :: Tree a -> Int that, given a multiway tree, it
-- returns the path length of the tree.
-- We define the path length of a multiway tree as the total sum of the path lengths
-- from the root to all nodes.

-- My Solution:

data Tree a = Node a [Tree a]
    deriving (Eq, Show)

pathLength :: Tree a -> Int

pathLength = pathLengthAux 0
    where
        pathLengthAux d (Node _ c) = d + sum (map (pathLengthAux (d+1)) c)
