-- Define a function dupli :: [a] -> [a] that duplicates the elements of a list.

-- My Solution:

dupli :: [a] -> [a]

dupli [a] = [a] ++ [a]
dupli (x:xs) = dupli [x] ++ dupli xs

-- Other Solution:

dupli1 :: [a] -> [a]

dupli1 [] = []
dupli1 (x:xs) = x:x:dupli xs
