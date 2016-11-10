newtype CustomerId = MakeCustomerId Int

data Customer = MakeCustomer
    { customerId    :: CustomerId
    , name          :: String
    , luckyNumber   :: Int
    }

