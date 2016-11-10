listOfFunctions = map ($) [(+1), (\x -> 2*x + 3), (*2)]

x = show (read "123" :: Int)

foo = x * y + z
	where x = 32
		  y = 42
		  z = -5

length_ints :: [Int] -> [Int]
length_ints [] = 0
length_ints (x:xs) = length_ints x + 1

length_chars :: [Char] -> [Char]
length_chars [] = 0
length_chars (x:xs) = length_chars xs + 1

length :: Foldable t => t a -> Int
