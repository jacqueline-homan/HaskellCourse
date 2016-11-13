data CustomerId = MakeCustomerId Int
                    deriving Show

data Customer = Customer CustomerId String Int

data Response = Yes | No | Help | Quit

data MaybeInt = NoInt | JustInt Int

defaultInt :: Int -> MaybeInt -> Int
defaultInt defaultVal NoInt = defaultVal
defaultInt _ (JustInt x) = x

alice :: Customer
alice = Customer (MakeCustomerId 13) "Alice" 42

getCustomerId :: Customer -> CustomerId
getCustomerId (Customer cust_id _ _) = cust_id



{-For some reason, this don't work:

data StringTree = StringTree String [StringTree]
hierarchy = StringTree "C:"
                [ StringTree "Program Files" []
                , StringTree "Users"
                     StringTree "Alice" []
                , StringTree "Cats" []
                ]
data Bool = False | True

-}


data Client = GovOrg String
            | Company String Integer String String
            | Individual String String Bool
            deriving Show

data StringList = EmptyStringList
                | ConsStringList String StringList

lengthStringList :: StringList -> Int
lengthStringList EmptyStringList = 0
lengthStringList (ConsStringList _ xs) = 1 + lengthStringList xs
{- This function above is the same as this function here: 
length :: [a] -> Int
length [] = 0
length (_ : xs) = 1 + length xs
-}