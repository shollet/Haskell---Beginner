-- Define a Rationnal type to manipulate positive rational numbers with
-- operations by:
-- 1. Construct a rational through a natural numerator and denominator
-- 2. Obtain the numerator of its simplified form
-- 3. Obtain the denominator of its simplified form.
-- Also, make Rationnal a member of class Eq and class Show, making
-- rationals display in the form "x/y".

-- Follow this interface:

-- data Rationnal = ...
-- rational :: Integer -> Integer -> Rational
-- numerator :: Rational -> Integer
-- denominator :: Rational -> Integer

-- If you want, you can use the standard gcd function which returns the
-- greatest common divisor of two naturals

--              Input                            Output

-- numerator (rational 1 2)                  ->     1
-- denominator (rational 1 2)                ->     2
-- numerator (rational 2 4)                  ->     1
-- denominator (rational 2 4)                ->     2
-- rational 1 2                              ->    1/2
-- rational 2 4                              ->    1/2
-- rational 1 2 == rational 2 4              ->    True
-- rational 1 2 == rational 1 3              ->    False

-- My Solution:

data Rationnal = Rationnal Integer Integer

rational :: Integer -> Integer -> Rationnal
rational x y
    | y == 0    = error "zero cannot be the denominator"
    | otherwise = Rationnal (x `div` gcdx) (y `div` gcdx)
        where
            gcdx = gcd x y


numerator :: Rationnal -> Integer
numerator (Rationnal num _) = num

denominator :: Rationnal -> Integer
denominator (Rationnal _ den) = den

instance Eq Rationnal where
    Rationnal num1 den1 == Rationnal num2 den2 = num1 == num2 && den1 == den2

instance Show Rationnal where
    show (Rationnal num den) = show num ++ "/" ++ show den

