module SquarePyramidNumbers where

getSquarePyramidNumbersWithLimit :: Int -> Int -> [Int] -> [Int]
getSquarePyramidNumbersWithLimit startElement numberElements list =
  if numberElements > 0 then
    list ++ [startElement * (startElement + 1) * (2 * startElement + 1) `div` 6] ++ getSquarePyramidNumbersWithLimit (startElement + 1) (numberElements - 1) list
  else 
    []