module Main where

import qualified SheetFunctions as SF

main = do
  let list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  let list2 = [1, 2, 3, 4, 5, 6, 7, 8]
  let list3 = [1, 2, 3, 4, 5, 6, 7, 8]
  let list4 = [1, 2, 3, 4, 5, 6, 7, 8]
  let list5 = []
  let list6 = [1, 2, 3, 4, 5, 6, 7, 8]

  print (SF.listSumm list1 list2)
  print (SF.listSumm list3 list4)
  print (SF.listSumm list5 list6)
  print (SF.listSumm list6 list5)
  print (SF.listSumm list5 list5)

