module OddNaturalList where

oddNaturalListWithRecursive :: Int -> Int -> [Int]
oddNaturalListWithRecursive startElement numberElement =
  if numberElement > 0
    then startElement : oddNaturalListWithRecursive (startElement + 2) (numberElement - 1)
    else []

oddNaturalListWithGenerator :: Int -> Int -> [Int]
oddNaturalListWithGenerator startElement numberElement = 
  [startElement, startElement + 2 .. startElement + 2 * numberElement - 1]

oddNaturalListWithIterating :: Int -> Int -> [Int] -> [Int]
oddNaturalListWithIterating startElement numberElement emptyList = 
  if numberElement > 0 && startElement `mod` 2 == 1 then 
    emptyList ++ [startElement] ++ oddNaturalListWithIterating (startElement + 1) (numberElement - 1) emptyList
  else 
    if numberElement > 0 then
      oddNaturalListWithIterating (startElement + 1) (numberElement) emptyList
    else []