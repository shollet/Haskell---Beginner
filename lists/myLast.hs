-- Write a function myLast :: [a] -> a that, given a list of elements of type a, returns
-- the last element of the list

--My Solution:

myLast :: [a] -> a  -- type header

myLast [] = error "Empty List"
myLast [x] = x  -- one element
myLast (_:xs) = myLast xs

-- Other solution

myLast2 :: [a] -> a

myLast2 = head . reverse



