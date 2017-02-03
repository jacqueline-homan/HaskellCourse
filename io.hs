main :: IO()
{- to avoid errors from multiple
declarations of main, we use numbers after main -}

main = do
    putStrLn "Hello world "
    putStrLn "Wakey wakey!"

helloToMe :: IO() 
helloToMe = putStrLn "Hello, J"

main1 :: IO()
main1 = do
    helloToMe
    helloToMe
    helloToMe

introduce :: String -> String -> IO()
introduce name1 name2 = do
    putStrLn (name1 ++ ", this is " ++ name2)
    putStrLn (name2 ++ ", this is " ++ name1)

main2 = do 
    introduce "Alice" "Bob"
    introduce "Alice" "Sally"

main3 :: IO()
main3 = do
    putStrLn "Type in whatever here: "
    line <- getLine
    putStrLn ("You said: " ++ line)

greet :: IO()
greet = do 
    putStrLn "What's your name?"
    who <- getLine
    putStrLn ("Hello, " ++ who)

greetForever :: IO()
greetForever = do
    greet
    greetForever
    
main4 :: IO()
main4 = greetForever

dummyGetLine :: IO String
dummyGetLine = 
    return "I'm not really doing anything"

main5 :: IO()
main5 = do
    line <- dummyGetLine
    putStrLn line 

promptInfo :: IO(String, String)
promptInfo = do 
    putStrLn "What is your name?"
    name <- getLine 
    putStrLn "What is your favorite color?"
    color <- getLine 
    return (name, color)

main6 ::IO()
main6 = do 
    (name, color) <- promptInfo
    putStrLn ("Hello, " ++ name)
    putStrLn ("I like " ++ color ++ " too!")

main7 :: IO()
main7 = do 
    line1 <- getLine
    line2 <- getLine
    lines <- return(line1 ++ line2)
    putStrLn lines

main8 :: IO()
main8 = do
    line1 <- getLine
    line2 <- getLine
    let lines = line1 ++ line2
    putStrLn lines

main9 :: IO()
main9 = do
    return 0
    putStrLn "haha, still running.."
    return "halt!"
    putStrLn "nanner-nanner boo-boo stick your head in doo-doo, you can't stop me!"

reverseLines :: String -> String
reverseLines input =
    unlines (map reverse (lines input))
main10 :: IO()
main10 = interact reverseLines

encrypt :: Char -> Char
encrypt c 
    | 'A' <= c && c < 'Z' = 
        toEnum (fromEnum 'A' + 1)
    | c == 'Z' = 'A'
    | otherwise = c

main11 :: IO()
main11 = interact (map encrypt)
