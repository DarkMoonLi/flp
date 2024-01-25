module Main where

import qualified SheetFunctions as SF

main = do
  let listIntOdd = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  let listStringOdd = ["1", "2", "3", "4", "5"]
  let listCharOdd = ['1', '2', '3', '4', '5']

  putStrLn "Список целых элементов, со вставленной 11 на 4 позицию:"
  print (SF.insert listIntOdd 11 4)

  putStrLn "Список строковых элементов, со вставленной '17' на 6 позицию:"
  print (SF.insert listStringOdd "17" 6)

  putStrLn "Список элементов, со вставленной 'f' на 13 позицию:"
  print (SF.insert listCharOdd 'f' 13)