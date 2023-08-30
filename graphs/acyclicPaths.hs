-- Write a function acyclicPaths :: Eq a => a -> a -> [(a,a)] -> [[a]] that, given
-- two nodes a and b in a graph, returns all the acyclic paths from a to b.

data Graph a = Edge [(a,a)]
    deriving (Show, Eq)

acyclicPaths :: Eq a => a -> a -> [(a,a)] -> [[a]]

acyclicPaths source sink edges
    | source == sink = [[sink]]
    | otherwise      = [
                        source:path
                        | edge <- edges, (fst edge) == source,
                          path <- (acyclicPaths (snd edge) sink [e | e <- edges, e /= edge])
                       ]
