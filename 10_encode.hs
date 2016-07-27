
pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = [[x] ++ (takeWhile (== x) xs)] ++ pack (dropWhile (== x) xs)

encode :: (Eq a) => [a] -> [(Int,a)]
encode xs = map (\ g -> (length g, head g)) $ pack xs
