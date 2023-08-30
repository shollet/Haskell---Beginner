-- Write a program that reads the name of a person and writes a nice message. The
-- input is the name of a person. If the name has an A, 'You belong to Group A!' must
-- be written. Otherwise, 'You belong to Group B!' must be written.
-- Write a main action.

-- My Solution:

main :: IO ()

main = do
    name <- getLine
    if ('a' `elem` name || 'A' `elem` name) then
        putStrLn "You belong to Group A!"
    else
        putStrLn "You belong to Group B!"
