-- Consider a generic symbol table that converts texts (Strings) to values of
-- type a defined by
-- type SymTab a = String -> Maybe a
-- The symbol table returns a Maybe a and not an a in order to indicate
-- unsuccessful searches

-- The operations on the symbol table are:
-- empty :: Symtab a
-- get :: SymTab a -> String -> Maybe a
-- set :: SymTab a -> String -> a -> SymTab a
--
-- where empty creates an empty symbol table, get returns the value of a text
-- to the symbol table (with Just if present or Nothing if not), and set returns
-- a new symbol table defining a new value for a symbol (and overwriting the
-- old value if the symbol was already in the table).
--
-- Implement these three operations on the given type (which you can't change)

--          Input                                   Output
-- get (set empty "a" 1) "a"                  ->    Just 1
-- get (set empty "a" 1) "b"                  ->    Nothing
-- get (set (set empty "a" 1) "b" 2) "a"      ->    Just 1
-- get (set (set empty "a" 1) "b" 2) "b"      ->    Just 2
-- get (set (set empty "a" 1) "b" 2) "c"      ->    Nothing
-- get (set (set empty "a" 1) "a" 2) "a"      ->    Just 2

-- My Solution:

type SymTab a = String -> Maybe a

empty :: SymTab a
empty = (\_ -> Nothing)

get :: SymTab a -> String -> Maybe a
get symbolicTable key = symbolicTable key

set :: SymTab a -> String -> a -> SymTab a
set table k v = (\a -> if (k == a) then Just v else table a)
