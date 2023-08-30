-- Write a function myButLast :: [a] -> a that, given a list of elements of type a, returns the
-- penultimate element of the list.

-- My Solution:

myButLast :: [a] -> a

myButLast = head . tail . reverse

-- Other Solution:

myButLast1 :: [a] -> a

myButLast1 [x,_] = x    -- base case
myButLast1 (_:xs) = myButLast1 xs

