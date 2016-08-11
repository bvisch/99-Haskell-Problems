
repli :: [a] -> Int -> [a]
repli list@(x:xs) i = concat [(repli' x i) | x <- list]
    where
      repli' x 0 = []
      repli' x i = x:repli' x (i-1)

repli2 :: [a] -> Int -> [a]
repli2 xs i = concatMap (repli' i) xs
    where
      repli' 0 x = []
      repli' i x = x:repli' (i-1) x
