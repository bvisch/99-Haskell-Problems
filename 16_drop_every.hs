
dropEvery :: [a] -> Int -> [a]
dropEvery xs n = map fst $ filter (\(x,i) -> i `mod` n /= 0) $ zip xs [1..]

dropEvery2 :: [a] -> Int -> [a]
dropEvery2 xs n = [x | (x,i) <- zip xs [1..], i `mod` n /= 0]
