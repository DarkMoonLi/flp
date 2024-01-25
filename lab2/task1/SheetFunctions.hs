module SheetFunctions where

oddEven :: [v] -> [v]
oddEven [] = []
oddEven [x] = [x]
oddEven (x:y:xs) = y:x:oddEven xs