module SheetFunctions where

listSumm :: [Int] -> [Int] -> [Int]
listSumm [][] = []
listSumm [](n1:nx) =(n1:nx)
listSumm (l1:lx)[] = (l1:lx)
listSumm (l1:lx) (n1:nx) = l1 + n1: (listSumm lx nx )