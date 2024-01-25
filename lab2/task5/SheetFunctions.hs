module SheetFunctions where

sumFormule :: Int -> Int -> Int
sumFormule n i
  | i <= n = i * n + sumFormule n (i + 1)
  | otherwise = 0