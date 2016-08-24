
removeAt :: [a] -> Int -> [a]
removeAt xs i = [x | (x,y) <- zip xs [1..], y /= i]
