fancySeven =
    let a = 3
    in 2 * a + 1

fancyNine =
    let x = 4
        y = 5
    in x + y
nums = [1,2,3,4,5,6,7,8,9]
removeOdd [] = []
removeOdd (x : xs)
    | mod x 2 == 0 = x : (removeOdd xs)
    | otherwise = removeOdd xs

numEven nums =
    let evenNums = removeOdd nums
    in length evenNums