--elem :: Eq a => a -> [a] -> Bool

{-
elem _ [] = False
elem x (y : ys)
    | x == y = True
    | otherwise = elem x ys

-}
data RGB = RGB Int Int Int

instance Eq RGB where
    (RGB r1 g1 b1) == (RGB r2 g2 b2) = 
        (r1 == r2) && (g1 == g2) && (b1 == b2)

colors = [RGB 255 0 0, RGB 0 255 0, RGB 0 0 255]
green = RGB 0 255 0
greenInColors = elem green colors

-- To represent RGB as a string
instance Show RGB where
    show (RGB r g b) =
        "RGB " ++ (show r) ++ " " ++
        (show g) ++ " " ++ (show b)
-- then run `show (RGB 0 255 0` in GHCi)

data DNA = DNA [Char] 

instance Eq DNA where
    (DNA str1) == (DNA str2) = 
        (str1 == str2)
dnaStrands = [DNA "ACCTTAAG", DNA "ACTGGA"]
yours = DNA "ACT"
yourDNAmatch = elem yours dnaStrands

data Douche = Douche [Char]

instance Eq Douche where
    (Douche str1) == (Douche str2) =
        (str1 == str2)
doucheD00ds = [Douche "Chris Allen", Douche "Moldbug D00d"]
d00dBro = Douche "Chris Allen"
doucheMatch = elem d00dBro doucheD00ds
