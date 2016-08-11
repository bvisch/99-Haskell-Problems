
dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = [x,x] ++ dupli xs

dupli2 :: [a] -> [a]
dupli2 [] = []
dupli2 (x:xs) = x:x:dupli xs

dupli3 :: [a] -> [a]
dupli3 xs = concat [[x,x] | x <- xs]

dupli4 :: [a] -> [a]
dupli4 = concatMap (\x -> [x,x])
