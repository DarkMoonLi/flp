module Main where

import LW4
import qualified Data.Set
import qualified Data.Map

main = do
  print (LW4.intersperse '-' "Hello")
  print (LW4.elems (Data.Map.fromList [(3,"A"),(5,"B"),(1,"D"),(0,"QQQ")]))
  print (LW4.size (Data.Set.fromList [1..10]))
  print (LW4.isDigit '9')
  print (LW4.unwords ["aa", "bb", "cc", "dd", "ee"])