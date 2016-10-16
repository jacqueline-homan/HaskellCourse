string1 = "hello"
string2 = "world"
greeting = string1 ++ " " ++ string2

square x = x * x 
    where x = 2

posOrNeg x = 
    if x >= 0
        then "Positive"
        else "Negative"

{- This works but want to show something else first
pow2 n = 
    if n == 0 
    then 1
    else 2 * (pow2 (n-1))
-}

repeatString str n =
    if n == 0 
    then ""
    else str ++ (repeatString str (n-1))

pow2 n = pow2loop n 1 0
pow2loop n x i = 
    if i < n 
    then pow2loop n (x*2) (i+1)
    else x

