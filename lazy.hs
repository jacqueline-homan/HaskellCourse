{- Example of lazy evaluation w/ an infinite list, the
set of all natural numbers
-} 
intsFrom n = n : (intsFrom (n + 1))
ints = intsFrom 1

removeOdd [] = []
removeOdd (x : xs)
    | mod x 2 == 0 = x : (removeOdd xs)
    | otherwise = removeOdd xs