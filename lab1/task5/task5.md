Main.hs
-------------------------------------------------
module Main where

import qualified SquarePyramidNumbers as SPN

main = do
  let startElement = 1
  let numberElements = 50
  let list = []

  putStrLn "Список квадратных пирамидальных чисел Ферма:"
  print (SPN.getSquarePyramidNumbersWithLimit startElement numberElements list)
-------------------------------------------------
SquarePyramidNumbers.hs
-------------------------------------------------
module SquarePyramidNumbers where

getSquarePyramidNumbersWithLimit :: Int -> Int -> [Int] -> [Int]
getSquarePyramidNumbersWithLimit startElement numberElements list =
  if numberElements > 0 then
    list ++ [startElement * (startElement + 1) * (2 * startElement + 1) `div` 6] ++ getSquarePyramidNumbersWithLimit (startElement + 1) (numberElements - 1) list
  else 
    []
-------------------------------------------------
![Alt text](image.png)