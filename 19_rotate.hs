
rotate :: [a] -> Int -> [a]
rotate xs i = (drop amt xs) ++ take amt xs
    where
      amt
        | i < 0 = (length xs) + i
        | otherwise = i
