module Main where

import qualified SheetFunctions as SF

main = do
  let listIntOdd = [1, 2, 3, 4, 5, 6, 7, 8, 9] :: [Int]
  let listIntEven = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] :: [Int]
  let listStringOdd = ["1", "2", "3", "4", "5"] :: [String]
  let listStringEven = ["1", "2", "3", "4", "5", "6"] :: [String]
  let listCharOdd = ['1', '2', '3', '4', '5'] :: [Char]
  let listCharEven = [] :: [Int]

  putStrLn "Список целых элементов, где соседние элементы поменялись местами:"
  print (SF.oddEven listIntOdd)

  putStrLn "Список целых элементов, где соседние элементы поменялись местами:"
  print (SF.oddEven listIntEven)

  putStrLn "Список строковых элементов, где соседние элементы поменялись местами:"
  print (SF.oddEven listStringOdd)

  putStrLn "Список строковых элементов, где соседние элементы поменялись местами:"
  print (SF.oddEven listStringEven)

  putStrLn "Список символьных элементов, где соседние элементы поменялись местами:"
  print (SF.oddEven listCharOdd)

  putStrLn "Список символьных элементов, где соседние элементы поменялись местами:"
  print (SF.oddEven listCharEven)