-- Define a function fsmap :: a -> [a -> a] -> a which, given an element x of type a
-- and a list fs of functions of type a -> a, causes fsmap x fs to return the application
-- (from left right) of all functions from fs to x.

--  Input                                           Ouput
--
-- fsmap 3 [(+2),(*3),(+4)]                     ->    19
--
-- fsmap "e" [(++ "llo"),(:) 'h',(++ "!")]      ->  "hello!"
--
-- fsmap False []                               ->   False

-- My Solution:

fsmap :: a -> [a -> a] -> a
fsmap x [] = x
fsmap x (f:fs) = fsmap (f x) fs

-- Other Solution:

fsmap1 :: a -> [a -> a] -> a
fsmap1 = foldl (flip ($))
