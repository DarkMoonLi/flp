module Main where

import qualified TrianglesNumber as TN

main = do
  let startElement = 0
  let numberElements = 50
  let list = []

  putStrLn "Список треугольных чисел Ферма:"
  print (TN.getTrianglesNumberWithLimit startElement numberElements list)