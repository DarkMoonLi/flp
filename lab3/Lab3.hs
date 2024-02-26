module Lab3 where

listnums :: Int -> [Int]
listnums n = reverse $ take n [1..]

secondlastlist :: [[a]] -> [a]
secondlastlist [] = []
secondlastlist [[]] = []
secondlastlist (x:xs) = last x : secondlastlist xs

myunion :: (Eq a) => [a] -> [a] -> [a]
myunion [] ys = ys
myunion xs [] = xs
myunion xs (y:ys)
    | y `elem` xs = myunion xs ys
    | otherwise = myunion (y:xs) ys

mysubst :: (Eq a) => [a] -> [a] -> [a]
mysubst xs ys = [x | x <- xs, not (x `elem` ys)]

getNthElements :: [[a]] -> Int -> [a]
getNthElements [] n = []
getNthElements lists n 
  | n < length lists && n > 0 = map (\sublist -> sublist !! n) lists
  | otherwise = error "output the ranges"