-- Write a function fib :: Int -> Int that returns the n-th element of the
-- Fibonacci sequence using the recursive algorithm that defines it
-- ( f(0) = 0, f(1) = 1, f(n) = f(n - 1) + f(n - 2) for n >= 2)

-- My Solution:

fib :: Int -> Int   -- type header

fib 0 = 0   -- base case #1
fib 1 = 1   -- base case #2

fib n = fib(n - 1) + fib(n - 2)
