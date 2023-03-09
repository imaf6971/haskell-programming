toPart :: String -> String
toPart recipient = "Dear " ++ recipient ++ "!\n"

bodyPart :: String -> String
bodyPart bookTitle =
  "Thanks for bying \""
    ++ bookTitle
    ++ "\"!\n"

fromPart :: String -> String
fromPart author = "From " ++ author

createEmail recipient bookTitle author =
  toPart recipient
    ++ bodyPart bookTitle
    ++ fromPart author

main = do
  putStrLn "Who are recipient of this message?"
  recipient <- getLine
  putStrLn "Book name?"
  title <- getLine
  putStrLn "Who are author?"
  author <- getLine
  putStrLn (createEmail recipient title author)
