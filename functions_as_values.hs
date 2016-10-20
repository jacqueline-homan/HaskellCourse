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

foo x y z = x + y + z
foo_1_2 = foo 1 2

