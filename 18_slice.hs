
slice :: [a] -> Int -> Int -> [a]
slice xs beg end = take (end - beg) $ drop beg xs

slice2 :: [a] -> Int -> Int -> [a]
slice2 xs beg end = map fst $ takeWhile (\(x,i) -> beg < i && i <= end) $ zip xs [1..]
