-- Implement a function myLength :: String -> Int that returns the length
-- of a string.

-- My Solution:

myLength :: String -> Int

myLength  = foldr (+) 0 . map (const 1)
