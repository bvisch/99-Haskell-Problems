
data Encoded a = Single a | Multiple Int a
  deriving (Show)

encode :: (Eq a) => [a] -> [Encoded a]
encode xs = encode' 0 xs
  where
    encode' i [x,y]
    | x == y = [Multiple (i + 2) x]
    | otherwise = [if i == 0 then Single x else Multiple (i + 1) x] ++ [Single y]
    encode' i (x:xs)
    | x == head xs = encode' (i + 1) xs
    | otherwise = [if i == 0 then Single x else Multiple (i + 1) x] ++ encode' 0 xs
