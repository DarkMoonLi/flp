module SheetFunctions where

position :: [a] -> a -> Integer
position l a = positionN a l 0

positionN :: a -> [a] -> Integer -> Integer
positionN j (a:t) n = (n + 1)
positionN a (h:t) n = positionN a t (n+1)
positionN a [] n = 0