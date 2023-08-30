-- Write a function stringToTree :: String -> Tree a that, given a string, it builds
-- the tree. We suppose that the nodes of a multiway tree contain single characters. In
-- the depth-first order sequence of its nodes, a special character ^ has been inserted
-- whenever, during the tree traversal, the move is backtrack to the previous level.

-- My Solution:

data Tree a = Node a [Tree a]
    deriving (Eq, Show)

stringToTree :: String -> Tree Char

stringToTree (x:xs) = Node x (fst (stringToTrees xs))
    where
        stringToTrees (t:r)
            | t == '^'  = ([],r)
            | otherwise = ([Node t trees0] ++ trees1,rest1)
                where
                    (trees0,rest0) = stringToTrees r
                    (trees1,rest1) = stringToTrees rest0
