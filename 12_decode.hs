
data Encoded a = Single a | Multiple Int a
  deriving (Show)

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = [[x] ++ (takeWhile (== x) xs)] ++ pack (dropWhile (== x) xs)

encode :: (Eq a) => [a] -> [Encoded a]
encode xs = map encode' $ pack xs
       where
         encode' [x] = Single x
         encode' xs = Multiple (length xs) (head xs)

decode :: (Eq a) => [Encoded a] -> [a]
decode xs = concatMap decode' xs
       where
         decode' (Single x) = [x]
         decode' (Multiple i x) = replicate i x
