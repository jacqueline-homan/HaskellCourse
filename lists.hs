x = [1,2,3]
empty = []
y = 0 : x
x' = 1 : (2 : (3 : []))
--y' = 6 : y
--y' = y ++ 6
y' = y ++ [6]

nums = [7,8]
double nums =
	if null nums 
	then []
	else (2 * (head nums)) : (double (tail nums))

nums' = y'
twice nums' =
	if null nums'
	then []
	else (3 * (head nums')) : (twice (tail nums'))
z = y' ++ nums

-- Writing a function that removes all odd numbers from the list
removeOdd y' =
	if null y'
	then []
	else
		if (mod (head y') 2) == 0 
		then (head y') : (removeOdd (tail y'))
	else removeOdd (tail y')