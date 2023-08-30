-- Write a function breadthFirst :: Tree a -> [a] that, given a tree, return its
-- traversal by levels.

-- My Solution:

data Tree a = Node a (Tree a) (Tree a) | Empty
    deriving (Show)

breadthFirst :: Tree a -> [a]

breadthFirst t = bfs [t]
    where
        bfs :: [Tree a] -> [a]
        bfs [] = []
        bfs (Empty:xs) = bfs xs
        bfs ((Node x lc rc):xs) = x : (bfs $ xs ++ [lc,rc])
