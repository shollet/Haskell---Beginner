-- Write a function bottomUp :: Tree a -> [a] that constructs the bottom-up
-- sequence of the nodes of the multiway tree.

-- My Solution:

data Tree a = Node a [Tree a]
    deriving (Eq, Show)

bottomUp :: Tree a -> [a]

bottomUp (Node x ts) = concatMap bottomUp ts ++ [x]
