-- Implement a function firstWord :: String -> String that, given a string with blanks and
-- alphabetic characters, returns its first word.

-- My Solution:

firstWord :: String -> String
firstWord = head . words

-- Other Solution:

firstWord1 :: String -> String
firstWord1 = takeWhile (/= ' ') . dropWhile (== ' ')
