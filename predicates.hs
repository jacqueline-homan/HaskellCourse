evens = [x*2 | x <- [1..10]]

{-Predicates for establishing if an element 2*x
in the new set is >= 12
-}
evensWithPredicate = [x*2 >= 12 | x <- evens]
-- This does not work:evensWithPredicate = [ x <- evens | x*2 >= 12]

-- Predicate where xs is an infinite list
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

{-More than one predicate is allowed in Haskell.
Here is a function, golly, which adds the results
of x and y for the values bound to x and 
the values bound to y where x draws its values
from the list of numbers [1,2,3] and y draws its
values from the list [10,100,100]
-}
golly = [x+y | x <- [1,2,3], y <- [10,100,1000]]

--An example of multiple predicates for excluding values
nope = [x | x <- [10..20], x /= 13, x /= 15, x /= 17, x /= 19]

{-An example of multiple predicates for getting all the possible
combinations of numbers in two lists
-}
combinations = [x*y | x <- [2,5,10], y <- [8,10,11]]

--What happens if I use ranges?
combo = [x*y | x <- [1..3], y <- [4..10]]
comboLimit = [x*y | x <- [1..3], y <- [4..10], x*y > 20]
{- This returns an empty list. Why?
another = [x*y | x <- [1..3], y <- [4..10], x*y > 20, x*y < 15]
-}
-- We can apply predicates to characters and strings too
noun = ["soup", "sandwich", "salad"]
adj = ["tasty", "yucky", "skimpy"]
rating = [adj ++ " " ++ noun | adj <- adj, noun <- noun]

{- Using a list comprehension to define a function for
determining the length of a list if Haskell did not 
already have one built in. Here, we use the "_" as a
temporary variable to store values as we draw them
from the input list.
-}
length' xs = sum [1 | _ <- xs]
