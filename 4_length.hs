
myLength :: [a] -> Int
myLength [] = 0
myLength _:xs = 1 + myLength xs

myLength2 :: [a] -> Int
myLength2 xs = sum $ map (\_ -> 1) xs

myLength3 :: [a] -> Int
myLength3 = sum . map (\_ -> 1)
