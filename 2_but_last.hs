
myButLast :: [a] -> a
myButLast [x,_] = x
myButLast _:xs = myButLast xs

myButLast2 :: [a] -> a
myButLast2 xs = head $ tail $ reverse xs

myButLast3 :: [a] -> a
myButLast3 = head . tail . reverse
