module Lab5 where

import Data.List

generateList :: Int -> Int -> Int -> [Int]
generateList initialValue numElements multipleFactor = take numElements [initialValue, initialValue + multipleFactor ..]