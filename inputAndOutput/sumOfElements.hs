-- Write an IO program which first read a positive integer, say n, and
-- the reads n integers and writes their sum. The program should prompt
-- appropriately for its inputs and explain its outputs.

-- My Solution:

import System.IO

prompt t = do
    putStr t
    hFlush stdout

sumOfNumbers =
    do  putStrLn "Compute the sum of some numbers."
        prompt "How many numbers? "
        n <- readLn
        let ask n = do prompt ("Enter a number:")
                       readLn
        list_numbers <- mapM ask [1..n]
        putStr "The sum of the numbers is "
        print (sum list_numbers)
