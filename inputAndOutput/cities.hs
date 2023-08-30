-- You are at a key point on a deserted road. Depending on the number of kilometers
-- you are willing to travel, you have to go to one city or another. Following the table:

--      KM               City
--  less than 18         Napa
--  from 18 to 25      Davenport
--  from 25 to 30      Naperville
--  from 30 to 45       Phoenix
--  more than 45       Carbondale

-- Input:
-- Input is organized in lines. Each line has two elements separated with a whitespace:
-- the name and the km. The last line is special and only contains an asterisk.

-- Output:
-- For each individual, print his/her name and the city to which he/she is addressed.

-- My Solution:

main :: IO ()

main = do
    line <- getLine
    if line /= "*" then do
        putStrLn $ city_sol line
        main
    else
        return ()


city_sol :: String -> String
city_sol line = name  ++ ": " ++ sol
    where
        (name,km) = parse line
        sol = interpret km

parse :: String -> (String,Float)
parse line = (n,km)
    where
        [n,_km] = words line
        km = read _km

interpret :: Float -> String
interpret x
    | x < 18    = "Napa"
    | x < 25    = "Davenport"
    | x < 30    = "Naperville"
    | x <= 45    = "Phoenix"
    | otherwise = "Carbondale"
