module Main where

import qualified SquarePyramidNumbers as SPN

main = do
  let startElement = 1
  let numberElements = 50
  let list = []

  putStrLn "Список квадратных пирамидальных чисел Ферма:"
  print (SPN.getSquarePyramidNumbersWithLimit startElement numberElements list)