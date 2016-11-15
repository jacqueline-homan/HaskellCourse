{- Defining an instance of a type class for
a parameterized type
-}
data Maybe' a = Nothing' | Just' a

instance (Eq a) => Eq (Maybe' a) where
    Nothing' == Nothing' = True
    Nothing' == (Just' _) = False
    (Just' _) == Nothing' = False
    (Just' x) == (Just' y) = x == y