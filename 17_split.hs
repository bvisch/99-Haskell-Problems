
split :: [a] -> Int -> [[a]]
split xs i = [take i xs] ++ [drop i xs]
