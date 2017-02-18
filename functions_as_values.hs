{- In Haskell, you can only declare a function once, 
so we comment out functions we reuse in tutorials
so our tutorial programs will compile
 -}

pass3 f = f 3
--add1 x = x + 1

compose f g x = f (g x)
add1 x = x + 1
mult2 x = x * 2

always7 x = 7
always7' = const 7

foo1 x y z = x + y + z
foo_1_2 = foo1 1 2

absolute x 
    | x < 0 = 0 - x 
    | otherwise = x 

cons8 = (:) 8
{-Note: You don't need a let binding here, only
in GHCi.

let cons8 list = 8:list, let cons8 = (:) 8 
and let cons8 list = (:) 8 list are all valid functions.
 -}
foo = cons8 [1,2,3]

cons8tail foo = foo ++ [8]

myCons list thing = (:) thing list 


