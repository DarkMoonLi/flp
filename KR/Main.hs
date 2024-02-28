module Main where

import Data.List (foldl')
import System.Environment (getArgs)

sumDivisibleBy3Or5 :: Int -> Int
sumDivisibleBy3Or5 n = sum [x | x <- [1 .. n - 1], x `mod` 3 == 0 || x `mod` 5 == 0]

findPythagoreanTriplet :: Int -> (Int, Int, Int)
findPythagoreanTriplet sum =
  head
    [ (a, b, c)
      | a <- [1 .. sum],
        b <- [a + 1 .. sum],
        let c = sum - a - b,
        a ^ 2 + b ^ 2 == c ^ 2
    ]

calculateProduct :: (Int, Int, Int) -> Int
calculateProduct (a, b, c) = a * b * c

transpose :: [[a]] -> [[a]]
transpose [] = []
transpose ([] : _) = []
transpose xss = map head xss : transpose (map tail xss)

isValid :: String -> Bool
isValid s = null $ foldl' (\stack c -> if isOpening c then c:stack else checkStack stack c) [] s
    where isOpening = flip elem "([{"
          istClosing = flip elem ")]}"
          checkStack (x:xs) c | isMatched x c = xs
                              | otherwise = c:x:xs
          checkStack [] _ = error "Нет открывающей скобки для закрывающей скобки"
          isMatched a b = (a, b) `elem` [('(',')'), ('[',']'), ('{','}')]

main = do
  [arg1] <- getArgs
  input <- readFile arg1

  print (sumDivisibleBy3Or5 1000)
  let (a, b, c) = findPythagoreanTriplet 1000
  print (a, b, c);
  print (calculateProduct (a, b, c))
  print (transpose [[1, 2, 3], [4, 5, 6]])
  print (isValid input)
  