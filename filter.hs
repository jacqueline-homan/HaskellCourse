notNull xs = not (null xs)

isEven x = x `mod` 2 == 0 
removeOdd = filter isEven

myTupleList = [(True, 1), (False, 7), (True, 11)]
--map snd (filter fst myTupleList) <- This only works in GHCi
--map snd filter fst myTupleList   <- This don't work