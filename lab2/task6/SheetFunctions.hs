module SheetFunctions where

sumFormule :: Int -> Int -> Int
sumFormule n i
  | i <= n = n * n - i + sumFormule n (i + 1)
  | otherwise = 0