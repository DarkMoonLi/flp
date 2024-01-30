module SheetFunctions where

sumFormule :: Int -> Int
sumFormule n = sum [n - i | i <- [1..n]]