
elementAt :: [a] -> Int -> a
elementAt xs i = xs !! (i-1)

elementAt :: [a] -> Int -> a
elementAt xs 1 = head xs
elementAt xs i = elementAt (tail xs) (i-1)
