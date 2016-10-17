{-
double [] = [] 
double (x : xs) = (2 * x) : (double xs) 
-}

-- How to code 2^nth power
pow2 n 
    | n == 0 = 1 
    | otherwise = 2 * (pow2 (n - 1))

-- Pattern-match with when guard
removeOdd [] = []
removeOdd (x : xs)
    | mod x 2 == 0 = x : (removeOdd xs)
    | otherwise = removeOdd xs

-- Pattern-matchin with a case expression
nums = [1,2,3,4,5,6,7,8,9] 
double nums = case nums of
    [] -> []
    (x : xs) -> (2 * x) : (double xs)
-- Returns true if there are even numbers in the list
anyEven nums = case (removeOdd nums) of 
    [] -> False
    (x : xs) -> True