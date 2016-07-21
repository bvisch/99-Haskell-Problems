
myLast :: [a] -> a
myLast x = head $ reverse x

myLast2 :: [a] -> a
myLast2 = head . reverse

myLast3 :: [a] -> a
myLast3 [x] = x
myLast3 _:xs = myLast3 xs
