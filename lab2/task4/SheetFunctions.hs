module SheetFunctions where

position :: (Eq a) => [a] -> a -> Int
position l a = positionN a l 0

positionN :: (Eq a) => a -> [a] -> Int -> Int
positionN a l n
  | n > (length l - 1) = error "Not found"
  | a == (l !! n) = n
  | a /= (l !! n) = positionN a l (n + 1)