data CustomerId = MakeCustomerId Int
                    deriving Show

data Customer = Customer CustomerId String Int

data Response = Yes | No | Help | Quit

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