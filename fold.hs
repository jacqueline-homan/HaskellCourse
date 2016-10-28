listNums = [1,2,3,4]
foldedList = foldl (+) 0 listNums
foldedList2 = foldr (+) 0 listNums

showPlus s x = "(" ++ s ++ "+" ++ (show x) ++ ")"
--in GHCi, run ` foldl showPlus "0" [1,2,3,4]`
showPlus' x s = "(" ++ (show x) ++ "+" ++ s ++ ")"
--in GHCi, run ` foldr showPlus' "0" listNums