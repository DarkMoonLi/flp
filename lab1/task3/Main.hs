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