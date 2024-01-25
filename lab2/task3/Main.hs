module Main where

import qualified SheetFunctions as SF

main = do
  let list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  let list2 = [1, 2, 3, 4, 5, 6, 7, 8]

  print (SF.listSumm list1 list2)

