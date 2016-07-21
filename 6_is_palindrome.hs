
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = foldl (\ acc x -> acc && x) True . map (\ (x,y) -> x == y) $ zip xs $ reverse xs
