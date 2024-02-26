module Main where

import qualified Lab3

main = do
  print (Lab3.listnums 10)
  print (Lab3.secondlastlist ([[1,2,3], [4,5,6], [7,8]]))
  print (Lab3.myunion [1,2,3,4] [0,2,3,1,5])
  print (Lab3.mysubst [0,2,3,1,5] [1,2,3,4])
  print (Lab3.getNthElements ([[1,2,3,4], [3,4,5], [1,2,7,9], [9,0,3]]) 2)