module Main where

import qualified SheetFunctions as SF

main = do
  let list1 = [1, 2, 3, 4, 2, 6, 7, 8, 9]

  print (SF.position list1 2)

