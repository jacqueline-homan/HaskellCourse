type String = [Char]
type Point = (Double, Double)

midpoint :: (Double, Double) -> (Double, Double)
            -> (Double, Double)
midpoint (x1, y1) (x2, y2) = 
    ((x1 + x2) / 2, (y1 + y2) / 2)

midpoint' :: Point -> Point -> Point
midpoint' (x1, y1) (x2, y2) = 
    ((x1 + x2) / 2, (y1 + y2) / 2)

p1 :: (Double, Double)
p1 = (1,2)

p2 :: Point
p2 = (3,4)

mid :: (Double, Double)
mid = midpoint p1 p2

mid' :: Point
mid' = midpoint' p1 p2

newtype CustomerId = MakeCustomerId Int

customer :: CustomerId
customer = MakeCustomerId 13

customerToInt :: CustomerId -> Int
customerToInt (MakeCustomerId i) = i