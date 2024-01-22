Main.hs
-------------------------------------------------
module Main where

import qualified OddNaturalList as ONL

main = do
  let startElement = 2
  let numberElement = 20

  putStrLn "Список натуральных нечетных чисел на основе рекурсии:"
  if startElement `mod` 2 == 1
    then print (ONL.oddNaturalListWithRecursive startElement numberElement)
    else print (ONL.oddNaturalListWithRecursive (startElement + 1) numberElement)

  putStrLn "Список натуральных нечетных чисел на основе генератора:"
  if startElement `mod` 2 == 1
    then print (ONL.oddNaturalListWithGenerator startElement numberElement)
    else print (ONL.oddNaturalListWithGenerator (startElement + 1) numberElement)

  let list = []
  putStrLn "Список натуральных нечетных чисел на основе перебора:"
  if startElement `mod` 2 == 1
    then print (ONL.oddNaturalListWithIterating startElement numberElement list)
    else print (ONL.oddNaturalListWithIterating (startElement + 1) numberElement list)
-------------------------------------------------
OddNaturalList.hs
-------------------------------------------------
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
-------------------------------------------------
![Alt text](image-1.png)