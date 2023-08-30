import Data.List

-- Write a predicate connectedcomponents :: Graph -> [[Node]] that
-- splits a graph into its connected components.
-- Use the following Graph Notation:

type Node = Int
type Edge = (Node,Node)
type Graph = ([Node],[Edge])

-- My Solution:

depthfirst :: Graph -> Node -> [Node]
depthfirst (v,e) n
    | [x | x <- v, x == n] == [] = []
    | otherwise                  = dfrecursive (v,e) [n]

dfrecursive :: Graph -> [Node] -> [Node]
dfrecursive ([],_) _ = []   -- Base Case 1: V is empty
dfrecursive (_,_) [] = []   -- Base Case 2: Solution empty
dfrecursive (v,e) (top:stack)
    | [x | x <- v, x == top] == [] = dfrecursive (newv,e) stack
    | otherwise                    = top : dfrecursive (newv,e) (adjacent ++ stack)
        where
            newv     = [x | x <- v, x /= top]
            adjacent = [x | (x,y) <- e, y == top] ++ [x | (y,x) <- e, y == top]



connectedcomponents :: Graph -> [[Node]]
connectedcomponents ([],_) = []
connectedcomponents (top:v,e)
    | remaining == [] = [connected]
    | otherwise       = connected : connectedcomponents (remaining,e)
        where
            connected = depthfirst (top:v,e) top
            remaining = (top:v) \\ connected


