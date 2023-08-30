-- Consider a knight on an empty 8x8 chess board. Its position can be given
-- with a tuple indicating its row and column:
-- type Pos = (Int,Int) -- bottom left box is (1,1)
-- Remember that knights move in an "L":

-- 1. Define a function inside :: Pos -> Bool that, given a position of a horse,
--    returns if it is inside the board
--
-- 2. Define a function moves :: Pos -> [Pos] that, given a position of a horse
--    within the board, returns the list of positions within the board where it
--    can be found after a jump. The order of the list is not important: Test
--    sets already sort it with luck. But you must write import Data.List(sort)
--    at the beginning of your program.
--
-- 3. Define a function canGo3 :: Pos -> Pos -> Bool that, given a start
--    position p within the board and a final position q, tells whether a horse can
--    go from p to q in (exactly) three jumps.
--
-- 4. Now define a function canGo3' :: Pos -> Pos -> Bool that does the same
--    as canGo3 but taking advantage of the fact that lists are Monad instances.

--      Input                                          Output
-- inside (4,5)                 ->                      True
-- inside (0,1)                 ->                      False
-- inside (4,9)                 ->                      False
-- sort $ moves (4,5)           -> [(2,4),(2,6),(3,3),(3,7),(5,3),(5,7),(6,4),(6,6)]
-- sort $ moves (1,1)           ->                  [(2,3),(3,2)]
-- canGo3 (1,1) (4,5)           ->                      True
-- canGo3 (1,1) (4,6)           ->                      False
-- canGo3' (1,1) (4,5)           ->                     True
-- canGo3' (1,1) (4,6)           ->                      False

-- My Solution:

import Data.List(sort)

type Pos = (Int,Int)

inside :: Pos -> Bool
inside (x,y) = inside' x && inside' y
    where
        inside' i = (1 <= i) && (i <= 8)

moves :: Pos -> [Pos]
moves (r,c) =
    filter
        inside
            [(r+2,c-1),
             (r+2,c+1),
             (r-2,c-1),
             (r-2,c+1),
             (r+1,c-2),
             (r+1,c+2),
             (r-1,c-2),
             (r-1,c+2)
             ]

canGo3 :: Pos -> Pos -> Bool
canGo3 p q = q `elem` destinations
    where
        destinations = concatMap moves $ concatMap moves $ moves p

canGo3' :: Pos -> Pos -> Bool
canGo3' p q = q `elem` destinations
    where
        destinations = moves p >>= moves >>= moves

