
compress :: Eq a => [a] -> [a]
compress [] = []
compress (x:xs) = [x] ++ compress (dropWhile (== x) xs)


compress2 :: Eq a => [a] -> [a]
compress2 = map head . group
