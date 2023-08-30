-- Write a function isomorphic :: Eq a => Tree a -> Tree a -> Bool that, given
-- two trees, tells whether they are isomorphic, that is, if one can obtain one
-- from the other flipping some of its descendants.

-- My Solution:

data Tree a = Node a (Tree a) (Tree a) | Empty
    deriving (Show)

isomorphic :: Eq a => Tree a -> Tree a -> Bool

isomorphic Empty Empty = True
isomorphic Empty _ = False
isomorphic _ Empty = False

isomorphic (Node x la ra) (Node y lb rb)
    | x /= y    = False
    | otherwise = (isomorphic la lb && isomorphic ra rb) ||
                  (isomorphic la rb && isomorphic ra lb)
