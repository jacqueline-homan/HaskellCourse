-- Definition of the Maybe type from the Haskell standard library:
data Maybe a = Just a | Nothing
-- Definition of the List type from the Haskell standard library
data List a = Empty | Cons a (List a)

{-data Map k a = ...-}

x :: Maybe Int
x = Nothing

fromMaybe :: a -> Maybe a -> a
fromMaybe defaultVal Nothing = defaultVal
fromMaybe _ (Just x) = x