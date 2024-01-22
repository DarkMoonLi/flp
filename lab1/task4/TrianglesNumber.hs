module TrianglesNumber where

getTrianglesNumberWithLimit :: Int -> Int -> [Int] -> [Int]
getTrianglesNumberWithLimit startElement numberElements list =
  if numberElements > 0 then
    list ++ [startElement * (startElement + 1) `div` 2] ++ getTrianglesNumberWithLimit (startElement + 1) (numberElements - 1) list
  else 
    []